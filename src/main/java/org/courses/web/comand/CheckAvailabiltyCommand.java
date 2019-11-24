package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.ReservationServiceFactory;
import org.courses.model.*;
import org.courses.services.ServiceType;
import org.courses.services.form.FormSelectService;
import org.courses.services.reservationServices.DateProcessingServiceImpl;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.Date;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class CheckAvailabiltyCommand implements Command {
    public static final String ERROR = "navigation.bookingForm.unfortunatelyCaseCheckFreeRooms";
    private static final Logger LOG = Logger.getLogger(CheckAvailabiltyCommand.class);
    private static final String ADULTS = "adults";
    private static final String ROOM_TYPE = "roomType";
    private static final String CHECKIN_DATE = "checkin-date";
    private static final String CHECKOUT_DATE = "checkout-date";
    private static RoomType[] roomTypes = RoomType.values();
    private DateProcessingServiceImpl dateProcessingService;
    private FormSelectService formSelectService;

    {
        AbstractServiceFactory abstractServiceFactory = new ReservationServiceFactory();
        dateProcessingService = (DateProcessingServiceImpl) abstractServiceFactory.getServiceFactory(ServiceType.DATE_PROCESSING_SERVICE);
        formSelectService = (FormSelectService) abstractServiceFactory.getServiceFactory(ServiceType.SELECT_ENTITY_SERVICE);
    }

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        Form form = getForm(request);
        LOG.info("Get form " + form);
        List<Room> roomList = getRoomList(form);
        if (roomList.isEmpty()) {
            request.setAttribute(AttributeName.EXIST_FREE_ROOMS, ERROR);
            return new Page(PagePathConstant.HOME_URL);
        }
        User user = getUser(request);
        if (userLogIn(user)) {
            form.setUser(user);
        }
        request.setAttribute(AttributeName.LIST_FREE_ROOM, roomList);
        request.setAttribute(AttributeName.FORM, form);
        return new Page(PagePathConstant.CHECK_AVAILABILTY);
    }

    private boolean userLogIn(User user) {
        return user != null;
    }


    private List<Room> getRoomList(Form form) {
        List<Form> allForms = (List<Form>) formSelectService.getAllEntity(form);

        return allForms.stream().map(f -> f.getReservation().getRoom()).collect(Collectors.toList());
    }


    private RoomType getRoomType(String inTable) {
        return Arrays.stream(roomTypes).filter(type -> type.getName().equals(inTable)).findAny().orElse(null);
    }


    private Form getForm(HttpServletRequest request) {
        User user = getUser(request);
        Reservation reservation = getReservation(request);
        return new Form(user, reservation);

    }

    private Reservation getReservation(HttpServletRequest request) {
        Room room = getRoom(request);
        String dateCheckInString = request.getParameter(CHECKIN_DATE);
        String dateCheckOutString = request.getParameter(CHECKOUT_DATE);
        Date validDateCheckIn = dateProcessingService.getValidDateCheckIn(dateCheckInString);
        Date validDateCheckOut = dateProcessingService.getValidDateCheckOut(dateCheckOutString, validDateCheckIn);
        Reservation reservation = new Reservation(room, validDateCheckIn, validDateCheckOut);
        LOG.info("Get reservation " + reservation);
        return reservation;

    }

    private User getUser(HttpServletRequest request) {
        User user = (User) request.getSession(false).getAttribute("user");
        LOG.info("Get user " + user);
        return user;
    }

    private Room getRoom(HttpServletRequest request) {
        int adults = Integer.parseInt(request.getParameter(ADULTS));
        RoomType roomType = getRoomType(request.getParameter(ROOM_TYPE));
        Room room = new Room(adults, roomType);
        LOG.info("Get room" + room);
        return room;
    }


}