package org.courses.services.reservationServices;

import org.apache.log4j.Logger;
import org.courses.dto.ReservationDto;
import org.courses.services.intefaces.DateProcessingService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateProcessingServiceImpl implements DateProcessingService {
    public static final Logger LOG = Logger.getLogger(DateProcessingServiceImpl.class);

    private SimpleDateFormat sdf1 = new SimpleDateFormat("dd MMMM, yyyy", Locale.US);
    private SimpleDateFormat sdfForDb = new SimpleDateFormat("yyyy-MM-dd");
    private java.util.Date LOCAL_DATE = new java.util.Date();

    public void setPrepareDateToReservationDto(ReservationDto reservation) {
        String startReservationBeforeParse = reservation.getStartReservationBeforeParse();
        String finishReservationBeforeParse = reservation.getFinishReservationBeforeParse();
        java.sql.Date validDateCheckIn = getValidDateCheckIn(startReservationBeforeParse);
        java.sql.Date validDateCheckOut = getValidDateCheckOut(finishReservationBeforeParse, validDateCheckIn);
        reservation.setStartReservation(validDateCheckIn);
        reservation.setFinishReservation(validDateCheckOut);
    }

    private java.sql.Date parseToSqlDte(String stringDate) {
        if (stringDate == null || stringDate.isEmpty()) {
            return null;
        }
        java.sql.Date date = null;
        try {
            Date parse = sdf1.parse(stringDate);
            date = java.sql.Date.valueOf(sdfForDb.format(parse));

        } catch (ParseException e) {
            LOG.error("Date not parse to valid form ", e);
        }
        return date;
    }

    private java.sql.Date getValidDateCheckOut(String notParseDateCheckOut, java.sql.Date validDateCheckIn) {
        java.sql.Date validDateCheckOut = new java.sql.Date(LOCAL_DATE.getTime());
        if (!notParseDateCheckOut.isEmpty()) {
            java.sql.Date parseDateCheckOut = parseToSqlDte(notParseDateCheckOut);
            if (parseDateCheckOut.after(validDateCheckIn)) {
                validDateCheckOut = parseDateCheckOut;
            }
        }
        return validDateCheckOut;
    }


    private java.sql.Date getValidDateCheckIn(String notParseDateCheckIn) {
        java.sql.Date validDateCheckIn = new java.sql.Date(LOCAL_DATE.getTime());
        if (!notParseDateCheckIn.isEmpty()) {
            java.sql.Date parseDateCheckIn = parseToSqlDte(notParseDateCheckIn);
            if (parseDateCheckIn.after(LOCAL_DATE)) {
                validDateCheckIn = parseDateCheckIn;
            }
        }
        return validDateCheckIn;


    }
}
