package org.courses.web.comand;

import org.courses.model.User;
import org.courses.model.UserRole;
import org.courses.services.CheckReCreationSevice;
import org.courses.services.CorrectDataService;
import org.courses.services.CreateService;
import org.courses.services.userServices.UserCheckReCreationService;
import org.courses.services.userServices.UserCorrectDataService;
import org.courses.services.userServices.UserCreateService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class RegisterUserCommand implements Command {
    private CreateService create = new UserCreateService();
    private CorrectDataService correctDataService = new UserCorrectDataService();
    private CheckReCreationSevice checkReCreationSevice = new UserCheckReCreationService();

    @Override

    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        request.getServletPath();
        User user = getUser(request);
        if (!correctDataService.isCorrectData(user)) {
//            return to register form again and send message unhappy register try again
//            return new Page("/#register", true);
//            if already have account, check in db
        } else if (checkReCreationSevice.isAlreadyCreation(user)) {
//            return  register form again and send message already register try, please sign in
//        and now create user
        } else if (create.doServiceCreate(user)) {
//        only this place happy case
//        and send hello user.name()
        }


        return new Page("/", true);
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
