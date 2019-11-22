package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.PagePathConstant;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.courses.services.CheckExistService;
import org.courses.services.CorrectDataService;
import org.courses.services.CreateService;
import org.courses.services.CryptographyService;
import org.courses.services.userServices.UserCheckExistService;
import org.courses.services.userServices.UserCorrectDataToRegisterService;
import org.courses.services.userServices.UserCreateService;
import org.courses.services.userServices.UserCryptographyService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class RegisterUserCommand implements Command {
    private static final Logger LOG = Logger.getLogger(RegisterUserCommand.class);
    private static final String IS_REGISTER_SUCCESSFUL = "isRegisterSuccessful";
    private CreateService createUser = new UserCreateService();
    private CorrectDataService correctDataUser = new UserCorrectDataToRegisterService();
    private CheckExistService checkIsExistUser = new UserCheckExistService();
    private CryptographyService cryptographyPassword = new UserCryptographyService();

    @Override

    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession();
        request.getServletPath();
        User user = getUser(request);

        if (notCorrectDataUser(user) || checkIsExistUser.isExist(user)) {

            return notSuccessfulRegisterCase(request);
        }
        setUserEncryptionPassword(user);
        if (createUser.insertEntity(user)) {
            LOG.info("Register successfully");
            session.setAttribute("user", user);
            request.setAttribute(IS_REGISTER_SUCCESSFUL, true);
        }


        return new Page(PagePathConstant.UI_PAGES_REGISTER_FORM_JSP);
    }

    private Page notSuccessfulRegisterCase(HttpServletRequest request) {
        LOG.info("Register unsuccessfully");
        request.setAttribute(IS_REGISTER_SUCCESSFUL, false);
        return new Page(PagePathConstant.UI_PAGES_REGISTER_FORM_JSP);
    }

    private void setUserEncryptionPassword(User user) {
        user.setPassword(cryptographyPassword.encryption(user.getPassword()));
    }

    private boolean notCorrectDataUser(User user) {
        return !correctDataUser.isCorrectData(user);
    }

    private User getUser(HttpServletRequest request) {
        String name = request.getParameter("name");
        String surname = request.getParameter("surname");
        String phone = request.getParameter("phone");
        String email = request.getParameter("email");
        String password = request.getParameter("password");
        String additionalInfo = request.getParameter("additionalInfo");
        UserRole user = UserRole.USER;

        return new User(name, surname, email, password, phone, user, additionalInfo);
    }
}
