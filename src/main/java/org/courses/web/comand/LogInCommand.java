package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.UserServiceFactory;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.courses.services.ServiceType;
import org.courses.services.intefaces.CryptographyService;
import org.courses.services.intefaces.SelectEntityService;
import org.courses.services.intefaces.ValidDataService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogInCommand implements Command {
    private static final Logger LOG = Logger.getLogger(LogInCommand.class);
    public static final String SUCCESSFUL = "navigation.login.successful";
    public static final String ERROR = "navigation.registerForm.wrongRegister";
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
        HttpSession session = request.getSession();
        if (notCorrectDataUser(user)) {
            return notSuccessfulLogInCase(request);
        }
        User entityFromDb = (User) selectEntityService.getEntity(user);
        if (notCorrectDataUser(entityFromDb)) {
            return notSuccessfulLogInCase(request);
        }
        if (isSamePassword(user, entityFromDb)) {
//            new UserDto();
            session.setAttribute("user", user);
//            if () check admin?
            return successfulLogInCase(request);
        }

        return notSuccessfulLogInCase(request);
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
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String additionalInfo = request.getParameter("additionalInfo");
        UserRole user = UserRole.USER;

        return new User(name, surname, password);
    }

    private boolean notCorrectDataUser(User user) {
        return !correctDataUser.isLoginValid(user);
    }
}
