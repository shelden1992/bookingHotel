package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.PagePathConstant;
import org.courses.dto.ReservationDto;
import org.courses.factory.AbstractServiceFactory;
import org.courses.factory.ReservationServiceFactory;
import org.courses.model.Entity;
import org.courses.model.Reservation;
import org.courses.model.Room;
import org.courses.model.RoomType;
import org.courses.services.ServiceType;
import org.courses.services.reservationServices.DateProcessingServiceImpl;
import org.courses.services.reservationServices.RoomSelectService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.util.Arrays;
import java.util.List;
import java.util.stream.Collectors;

public class CheckAvailabiltyCommand implements Command {
    private static final Logger LOG = Logger.getLogger(CheckAvailabiltyCommand.class);
    private static final String ADULTS = "adults";
    private static final String ROOM_TYPE = "roomType";
    private static final String CHECKIN_DATE = "checkin-date";
    private static final String CHECKOUT_DATE = "checkout-date";
    private static RoomType[] roomTypes = RoomType.values();
    private DateProcessingServiceImpl dateProcessingService;
    private RoomSelectService roomSelectService;

    {
        AbstractServiceFactory abstractServiceFactory = new ReservationServiceFactory();
        dateProcessingService = (DateProcessingServiceImpl) abstractServiceFactory.getServiceFactory(ServiceType.DATE_PROCESSING_SERVICE);
        roomSelectService = (RoomSelectService) abstractServiceFactory.getServiceFactory(ServiceType.SELECT_ENTITY_SERVICE);
    }

    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        ReservationDto reservation = getReservation(request);
        LOG.info("Get reservation " + reservation);
        dateProcessingService.setPrepareDateToReservationDto(reservation);
        List<? extends Entity> allEntity = roomSelectService.getAllEntity(reservation);
        List<Room> roomList = getRoomList(allEntity);
        request.setAttribute("listCheckAvailabiltyRooms", roomList);

        return new Page(PagePathConstant.CHECK_AVAILABILTY);
    }

    private List<Room> getRoomList(List<? extends Entity> allEntity) {
        return allEntity.stream().map(ent -> {
            Reservation reservationCast = (Reservation) ent;
            return reservationCast.getRoom();
        }).collect(Collectors.toList());
    }


    private RoomType getRoomType(String inTable) {
        return Arrays.stream(roomTypes).filter(type -> type.getName().equals(inTable)).findAny().orElse(null);
    }


    private ReservationDto getReservation(HttpServletRequest request) {

        String dateCheckInString = request.getParameter(CHECKIN_DATE);
        String dateCheckOutString = request.getParameter(CHECKOUT_DATE);
        int adults = Integer.parseInt(request.getParameter(ADULTS));
        RoomType roomType = getRoomType(request.getParameter(ROOM_TYPE));
        return new ReservationDto(roomType, adults, dateCheckInString, dateCheckOutString);
    }


}