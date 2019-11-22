package org.courses.web.comand;

import org.apache.log4j.Logger;
import org.courses.constant.PagePathConstant;
import org.courses.dao.ReservationDao;
import org.courses.dto.ReservationDto;
import org.courses.model.Reservation;
import org.courses.model.Room;
import org.courses.model.RoomType;
import org.courses.services.SelectRoomService;
import org.courses.services.reservationServices.CheckValidDateService;
import org.courses.services.reservationServices.DateProcessingService;
import org.courses.web.data.Page;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import java.io.IOException;
import java.sql.Date;
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
    private SelectRoomService selectRoomService = new SelectRoomService();
    private DateProcessingService dateProcessingService = new DateProcessingService();
    private CheckValidDateService checkValidDateService = new CheckValidDateService();
    private java.util.Date LOCAL_DATE = new java.util.Date();
    private ReservationDao reservationDao = new ReservationDao();


    @Override
    public Page perform(HttpServletRequest request) throws IOException, ServletException {
        ReservationDto reservation = getReservation(request);
        LOG.info("Get check availabilty " + reservation);
        List<Reservation> freeRoomOnThisDate = reservationDao.getAllReservationWithNotReservedRoomsBetweenDateSomeRoomType(reservation);
        List<Room> roomList = freeRoomOnThisDate.stream().map(Reservation::getRoom).collect(Collectors.toList());
        roomList.forEach(room -> room.getPhotoList().forEach(photo -> System.out.println(photo.getPhotoLink())));
        request.setAttribute("listCheckAvailabiltyRooms", roomList);

        return new Page(PagePathConstant.CHECK_AVAILABILTY);
    }


    private RoomType getRoomType(String inTable) {
        return Arrays.stream(roomTypes).filter(type -> type.getName().equals(inTable)).findAny().orElse(null);
    }


    private ReservationDto getReservation(HttpServletRequest request) {

        Date validDateCheckIn = getValidDateCheckIn(request);
        Date validDateCheckOut = getValidDateCheckOut(request, validDateCheckIn);
        int adults = Integer.parseInt(request.getParameter(ADULTS));
        RoomType roomType = getRoomType(request.getParameter(ROOM_TYPE));
        return new ReservationDto(roomType, adults, validDateCheckIn, validDateCheckOut);
    }

    private Date getValidDateCheckOut(HttpServletRequest request, Date dateBefore) {
        Date validDateCheckOut = new java.sql.Date(LOCAL_DATE.getTime());
        String notParceDateCheckOut = request.getParameter(CHECKOUT_DATE);
        if (!notParceDateCheckOut.isEmpty()) {
            Date parceDateCheckOut = dateProcessingService.getSqlDateFromParameter(notParceDateCheckOut);
            if (parceDateCheckOut.after(dateBefore)) {
                validDateCheckOut = parceDateCheckOut;
            }
        }
        return validDateCheckOut;
    }


    private Date getValidDateCheckIn(HttpServletRequest request) {
        Date validDateCheckIn = new java.sql.Date(LOCAL_DATE.getTime());
        String notParceDateCheckIn = request.getParameter(CHECKIN_DATE);
        if (!notParceDateCheckIn.isEmpty()) {
            Date parceDateCheckIn = dateProcessingService.getSqlDateFromParameter(notParceDateCheckIn);
            if (parceDateCheckIn.after(LOCAL_DATE)) {
                validDateCheckIn = parceDateCheckIn;
            }
        }
        return validDateCheckIn;


    }
}