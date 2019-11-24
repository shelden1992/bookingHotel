package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.UserServiceFactory;
import org.courses.model.Form;
import org.courses.model.User;
import org.courses.services.ServiceType;
import org.courses.services.intefaces.CryptographyService;
import org.courses.services.intefaces.SelectEntityService;
import org.courses.services.intefaces.ValidDataService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class LogInCommand implements Command {
    public static final String SUCCESSFUL = "navigation.login.successful";
    public static final String ERROR = "navigation.registerForm.wrongRegister";
    private static final Logger LOG = Logger.getLogger(LogInCommand.class);
    private ValidDataService correctDataUser;
    private SelectEntityService selectEntityService;
    private CryptographyService cryptographyPassword;

    {
        AbstractServiceFactory abstractServiceFactory = new UserServiceFactory();
        correctDataUser = (ValidDataService) abstractServiceFactory.getServiceFactory(ServiceType.VALID_DATA_SERVICE);
        selectEntityService = (SelectEntityService) abstractServiceFactory.getServiceFactory(ServiceType.SELECT_ENTITY_SERVICE);
        cryptographyPassword = (CryptographyService) abstractServiceFactory.getServiceFactory(ServiceType.CRYPTOGRAPHY_SERVICE);
    }

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        User user = getUser(request);
        Form formFromAttribute = (Form) request.getSession(false).getAttribute(AttributeName.FORM);
        if (sessionIsExist(formFromAttribute) && formAlreadyHaveUser(formFromAttribute)) {
            return notSuccessfulLogInCase(request);
        }
        if (notCorrectDataUser(user)) {
            return notSuccessfulLogInCase(request);
        }
        User entityFromDb = (User) selectEntityService.getEntity(user);
        if (notCorrectDataUser(entityFromDb)) {
            return notSuccessfulLogInCase(request);
        }
        if (isSamePassword(user, entityFromDb)) {
            Form form = null;
            user = entityFromDb;
            if (sessionIsExist(formFromAttribute)) {
                form = formFromAttribute;
                form.setUser(entityFromDb);
            } else {
                form = getNewForm(user);
            }
            request.getSession().setAttribute(AttributeName.FORM, form);
//            if () check admin?
            return successfulLogInCase(request);
        }

        return notSuccessfulLogInCase(request);
    }

    private boolean formAlreadyHaveUser(Form formFromAttribute) {
        return formFromAttribute.getUser() != null;
    }

    private boolean sessionIsExist(Form formFromAttribute) {
        return formFromAttribute != null;
    }

    private Page successfulLogInCase(HttpServletRequest request) {
        LOG.info("LogIn successfully");
        request.setAttribute(AttributeName.LOGIN_MESSAGE, SUCCESSFUL);

        return new Page(PagePathConstant.HOME_URL, true);
    }

    private boolean isSamePassword(User user, User entityFromDb) {
        return cryptographyPassword.matches(user.getPassword(), entityFromDb.getPassword());
    }

    private Page notSuccessfulLogInCase(HttpServletRequest request) {
        request.setAttribute(AttributeName.LOGIN_MESSAGE, ERROR);
        return new Page(PagePathConstant.UI_LOGIN_JSP);
    }

    private User getUser(HttpServletRequest request) {
        String name = request.getParameter("name").trim();
        String surname = request.getParameter("surname").trim();
        String email = request.getParameter("email").trim();
        String password = request.getParameter("password").trim();
        return new User(name, surname, email, password);
    }

    private Form getNewForm(User user) {
        return new Form(user);
    }

    private boolean notCorrectDataUser(User user) {
        return !correctDataUser.isLoginValid(user);
    }
}
