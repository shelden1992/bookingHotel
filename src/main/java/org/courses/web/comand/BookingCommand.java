package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.RoomServiceFactory;
import org.courses.model.Form;
import org.courses.model.Reservation;
import org.courses.model.Room;
import org.courses.model.User;
import org.courses.services.ServiceType;
import org.courses.services.intefaces.SelectEntityService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.IOException;

public class BookingCommand implements Command {
    private static final Logger LOG = Logger.getLogger(BookingCommand.class);
    private static final String ERROR = "navigation.bookingForm.registerBefore";
    private SelectEntityService selectEntityService;

    {
        AbstractServiceFactory abstractServiceFactory = new RoomServiceFactory();
        selectEntityService = (SelectEntityService) abstractServiceFactory.getServiceFactory(ServiceType.SELECT_ENTITY_SERVICE);
    }


    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        HttpSession session = request.getSession(false);
        Form form = (Form) session.getAttribute(AttributeName.FORM);
        User user = null;
        if (form != null) {
            user = form.getUser();
        }
        if (user == null) {
            LOG.info("User not LogIn ");
            request.setAttribute(AttributeName.LOGIN_MESSAGE, ERROR);
            return new Page(PagePathConstant.UI_LOGIN_JSP);
        }

        String room_number = request.getParameter("room_number").replaceAll(" ", "");
        Room room = getRoomById(room_number);
        Reservation reservation = form.getReservation();
        reservation.setRoom(room);
        double total = getTotal(reservation);
        form.setTotal(total);
        session.setAttribute(AttributeName.FORM, form);
        return new Page(PagePathConstant.BOOKING_FORM);


    }

    private double getTotal(Reservation reservation) {
        return reservation.getRoom().getPrice() * reservation.getDateDiff();
    }


    private Room getRoomById(String room_number) {
        return (Room) selectEntityService.getEntity(Integer.parseInt(room_number));
    }
}
