package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.PagePathConstant;
import org.courses.model.User;
import org.courses.model.UserRole;
import org.courses.services.CorrectDataService;
import org.courses.services.CryptographyService;
import org.courses.services.SelectEntityService;
import org.courses.services.userServices.UserCorrectDataToLoginService;
import org.courses.services.userServices.UserCryptographyService;
import org.courses.services.userServices.UserSelectService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class LogInCommand implements Command {
    private static final Logger LOG = Logger.getLogger(LogInCommand.class);
    private static final String LOGIN_MESSAGE = "statusLoginMessage";
    private CorrectDataService correctDataUser = new UserCorrectDataToLoginService();
    private SelectEntityService selectEntityService = new UserSelectService();
    private CryptographyService cryptographyPassword = new UserCryptographyService();


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
            session.setAttribute("user", user);
            return successfulLogInCase(request);
        }

        return notSuccessfulLogInCase(request);
    }

    private Page successfulLogInCase(HttpServletRequest request) {
        LOG.info("LogIn successfully");
        request.setAttribute(LOGIN_MESSAGE, "Login successful");

        return new Page(PagePathConstant.HOME_URL, true);
    }

    private boolean isSamePassword(User user, User entityFromDb) {
        return cryptographyPassword.matches(user.getPassword(), entityFromDb.getPassword());
    }

    private Page notSuccessfulLogInCase(HttpServletRequest request) {
        request.setAttribute(LOGIN_MESSAGE, "Something wrong. Please, try again.");
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
        return !correctDataUser.isCorrectData(user);
    }
}
