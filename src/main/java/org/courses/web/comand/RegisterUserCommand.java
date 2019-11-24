package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.UserServiceFactory;
import org.courses.model.Form;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.courses.services.ServiceType;
import org.courses.services.intefaces.CheckExistService;
import org.courses.services.intefaces.CreateEntityService;
import org.courses.services.intefaces.CryptographyService;
import org.courses.services.intefaces.ValidDataService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RegisterUserCommand implements Command {
    public static final String SUCCESSFUL = "navigation.registerForm.successful";
    public static final String ERROR = "navigation.registerForm.wrongRegister";
    private static final Logger LOG = Logger.getLogger(RegisterUserCommand.class);
    private CreateEntityService createUser;
    private ValidDataService correctDataUser;
    private CheckExistService checkIsExistUser;
    private CryptographyService cryptographyPassword;

    {
        AbstractServiceFactory abstractServiceFactory = new UserServiceFactory();
        createUser = (CreateEntityService) abstractServiceFactory.getServiceFactory(ServiceType.CREATE_ENTITY_SERVICE);
        correctDataUser = (ValidDataService) abstractServiceFactory.getServiceFactory(ServiceType.VALID_DATA_SERVICE);
        checkIsExistUser = (CheckExistService) abstractServiceFactory.getServiceFactory(ServiceType.CHECK_EXIST_SERVICE);
        cryptographyPassword = (CryptographyService) abstractServiceFactory.getServiceFactory(ServiceType.CRYPTOGRAPHY_SERVICE);
    }


    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession(false);
        Form formFromAttribute = (Form) session.getAttribute(AttributeName.FORM);
        User user = getUser(request);
        if (sessionIsExist(formFromAttribute) && formAlreadyHaveUser(formFromAttribute)) {
            return notSuccessfulRegisterCase(request);

        }
        if (notCorrectDataUser(user) || checkIsExistUser.isExist(user)) {

            return notSuccessfulRegisterCase(request);
        }
        setUserEncryptionPassword(user);
        if (createUser.addedToDbEntity(user)) {
            LOG.info("Register successfully " + user.getName() + " " + user.getSurname());
            Form form = null;
            if (sessionIsExist(formFromAttribute)) {
                form = formFromAttribute;
                form.setUser(user);
            } else {
                form = getNewForm(user);
            }
            session.setAttribute(AttributeName.FORM, form);
            request.setAttribute(AttributeName.REGISTER_MESSAGE, SUCCESSFUL);
        }


        return new Page(PagePathConstant.HOME_URL);
    }

    private Form getNewForm(User user) {
        return new Form(user);
    }

    private boolean formAlreadyHaveUser(Form formFromAttribute) {
        return formFromAttribute.getUser() != null;
    }

    private boolean sessionIsExist(Form formFromAttribute) {
        return formFromAttribute != null;
    }


    private Page notSuccessfulRegisterCase(HttpServletRequest request) {
        LOG.info("Register unsuccessfully");
        request.setAttribute(AttributeName.REGISTER_MESSAGE, ERROR);
        return new Page(PagePathConstant.UI_PAGES_REGISTER_FORM_JSP);
    }

    private void setUserEncryptionPassword(User user) {
        user.setPassword(cryptographyPassword.encryption(user.getPassword()));
    }

    private boolean notCorrectDataUser(User user) {
        return !correctDataUser.isRegisterValid(user);
    }

    private User getUser(HttpServletRequest request) {
        String name = request.getParameter("name").trim();
        String surname = request.getParameter("surname").trim();
        String phone = request.getParameter("phone").trim();
        String email = request.getParameter("email").trim();
        String password = request.getParameter("password").trim();
        String additionalInfo = request.getParameter("additionalInfo").trim();
        UserRole user = UserRole.USER;

        return new User(name, surname, email, password, phone, user, additionalInfo);
    }
}
