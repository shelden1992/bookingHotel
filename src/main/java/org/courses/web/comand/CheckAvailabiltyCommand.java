package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.AttributeName;
import org.courses.constant.PagePathConstant;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.ReservationServiceFactory;
import org.courses.model.Form;
import org.courses.model.Reservation;
import org.courses.model.Room;
import org.courses.model.RoomType;
import org.courses.services.ServiceType;
import org.courses.services.reservationServices.DateProcessingServiceImpl;
import org.courses.services.reservationServices.ReservationSelectService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;
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
    private ReservationSelectService reservationSelectService;

    {
        AbstractServiceFactory abstractServiceFactory = new ReservationServiceFactory();
        dateProcessingService = (DateProcessingServiceImpl) abstractServiceFactory.getServiceFactory(ServiceType.DATE_PROCESSING_SERVICE);
        reservationSelectService = (ReservationSelectService) abstractServiceFactory.getServiceFactory(ServiceType.SELECT_ENTITY_SERVICE);
    }

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        Form formFromAttribute = (Form) request.getSession(false).getAttribute(AttributeName.FORM);
        Reservation reservation = getReservation(request);
        List<Room> roomList = getRoomList(reservation);
        if (roomList.isEmpty()) {
            request.setAttribute(AttributeName.EXIST_FREE_ROOMS, ERROR);
            return new Page(PagePathConstant.HOME_URL);
        }
        Form form = null;
        if (sessionExist(formFromAttribute)) {
            form = formFromAttribute;
            form.setReservation(reservation);
        } else {
            form = new Form(reservation);

        }
        request.getSession().setAttribute(AttributeName.FORM, form);
        request.setAttribute(AttributeName.LIST_FREE_ROOM, roomList);
        return new Page(PagePathConstant.CHECK_AVAILABILTY);
    }

    private boolean sessionExist(Form formFromAttribute) {
        return formFromAttribute != null;
    }


    private List<Room> getRoomList(Reservation reservation) {
        List<Reservation> allForms = new ArrayList<>();
        if ("ALL".equals(reservation.getRoom().getRoomType().getName())) {
            allForms = (List<Reservation>) reservationSelectService.getAllRoomsByPlace(reservation);
        } else {
            allForms = (List<Reservation>) reservationSelectService.getAllEntity(reservation);
        }

        return allForms.stream().map(Reservation::getRoom).collect(Collectors.toList());
    }


    private RoomType getRoomType(String inTable) {
        return Arrays.stream(roomTypes).filter(type -> type.getName().equals(inTable)).findAny().orElse(null);
    }


    private Reservation getReservation(HttpServletRequest request) {
        Room room = getRoom(request);
        String dateCheckInString = request.getParameter(CHECKIN_DATE);
        String dateCheckOutString = request.getParameter(CHECKOUT_DATE);
        Date validDateCheckIn = dateProcessingService.getValidDateCheckIn(dateCheckInString);
        Date validDateCheckOut = dateProcessingService.getValidDateCheckOut(dateCheckOutString, validDateCheckIn);
        long dayDiff = dateProcessingService.getDateDiff(validDateCheckIn, validDateCheckOut);
        Reservation reservation = new Reservation(room, validDateCheckIn, validDateCheckOut, dayDiff);
        LOG.info("Get reservation " + reservation);
        return reservation;

    }


    private Room getRoom(HttpServletRequest request) {
        int adults = Integer.parseInt(request.getParameter(ADULTS));
        RoomType roomType = getRoomType(request.getParameter(ROOM_TYPE));
        Room room = new Room(adults, roomType);
        LOG.info("Get room" + room);
        return room;
    }


}