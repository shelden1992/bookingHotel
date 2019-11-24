package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.FormServiceFactory;
import org.courses.model.User;
import org.courses.services.ServiceType;
import org.courses.services.intefaces.SelectEntityService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class BookingCommand implements Command {
    private static final Logger LOG =Logger.getLogger(BookingCommand.class);
    public static final String ERROR = "navigation.bookingForm.registerBefore";
    SelectEntityService selectEntityService;

    {
        AbstractServiceFactory abstractServiceFactory = new FormServiceFactory();
        selectEntityService = (SelectEntityService) abstractServiceFactory.getServiceFactory(ServiceType.SELECT_ENTITY_SERVICE);
    }

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        User user = (User) request.getSession(false).getAttribute("user");

//        UserDto userDto = (UserDto) request.getAttribute("form");
//        userDto.setUser(user);

        if (user == null) {
            LOG.info("User not LogIn");
            request.setAttribute(AttributeName.LOGIN_MESSAGE, ERROR);
            return new Page(PagePathConstant.UI_LOGIN_JSP);

        }


        String room_number = request.getParameter("room_number");


        LOG.info("User already logIn");


        return new Page(PagePathConstant.BOOKING_FORM);


    }
}
