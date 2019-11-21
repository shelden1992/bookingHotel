package org.courses.web.comand;

import org.courses.constant.PagePathConstant;
import org.courses.services.SelectRoomService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;

public class CheckAvailabiltyCommand implements Command {
    SelectRoomService selectRoomService = new SelectRoomService();

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        String parameter1 = request.getParameter("adults");
        String attribute = (String) request.getAttribute("roomType");
        String attribute2 = (String) request.getAttribute("roomType");
        String parameter2 = request.getParameter("COMFORT");
        String parameter3 = request.getParameter("COMFORT");
        System.out.println("!!!!!!!!!!" + parameter1 + parameter2 + parameter3 + attribute + attribute2+"!!!!!");
//        new Reservation();
//        selectRoomService.getAllEntity();
        return new Page(PagePathConstant.CHECK_AVAILABILTY);
    }
}
