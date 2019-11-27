package org.courses.services.reservationServices;

import org.apache.log4j.Logger;
import org.courses.services.intefaces.DateProcessingService;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
import java.util.Locale;
import java.util.concurrent.TimeUnit;

public class DateProcessingServiceImpl implements DateProcessingService {
    public static final Logger LOG = Logger.getLogger(DateProcessingServiceImpl.class);

    private SimpleDateFormat sdf1 = new SimpleDateFormat("dd MMMM, yyyy", Locale.US);
    private SimpleDateFormat sdf2 = new SimpleDateFormat("yyyy-MM-dd", Locale.US);
    private SimpleDateFormat sdfForDb = new SimpleDateFormat("yyyy-MM-dd");
    private java.util.Date LOCAL_DATE = new java.util.Date();

    public java.sql.Date parseToSqlDate_dd_MMMM_yyyy(String stringDate) {
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

    public java.sql.Date parseToSqlDate_yyyy_MM_dd(String stringDate) {
        if (stringDate == null || stringDate.isEmpty()) {
            return null;
        }
        java.sql.Date date = null;
        try {
            Date parse = sdf2.parse(stringDate);
            date = java.sql.Date.valueOf(sdfForDb.format(parse));

        } catch (ParseException e) {
            LOG.error("Date not parse to valid form ", e);
        }
        return date;
    }

    public java.sql.Date getValidDateCheckOut(String notParseDateCheckOut, java.sql.Date validDateCheckIn) {
        Date localTimePlusDay = addOneDay(validDateCheckIn).getTime();
        java.sql.Date validDate = new java.sql.Date(localTimePlusDay.getTime());
        if (dateNotEmpty(notParseDateCheckOut)) {
            java.sql.Date parseDateCheckOut = parseToSqlDate_dd_MMMM_yyyy(notParseDateCheckOut);
            if (dateCheckOutAfterCheckIn(validDateCheckIn, parseDateCheckOut)) {
                validDate = parseDateCheckOut;
            }
        }
        return validDate;
    }

    private boolean dateCheckOutAfterCheckIn(java.sql.Date validDateCheckIn, java.sql.Date parseDateCheckOut) {
        return parseDateCheckOut.after(validDateCheckIn);
    }

    private boolean dateNotEmpty(String notParseDateCheckOut) {
        return !notParseDateCheckOut.isEmpty();
    }

    private Calendar addOneDay(Date validDateCheckOut) {
        Calendar calendar = Calendar.getInstance();
        calendar.setTime(validDateCheckOut);
        calendar.add(Calendar.DATE, 1);
        return calendar;
    }


    public java.sql.Date getValidDateCheckIn(String notParseDateCheckIn) {
        java.sql.Date validDateCheckIn = new java.sql.Date(LOCAL_DATE.getTime());
        if (!notParseDateCheckIn.isEmpty()) {
            java.sql.Date parseDateCheckIn = parseToSqlDate_dd_MMMM_yyyy(notParseDateCheckIn);
            if (parseDateCheckIn.after(LOCAL_DATE)) {
                validDateCheckIn = parseDateCheckIn;
            }
        }
        return validDateCheckIn;


    }

    public long getDateDiff(Date date1, Date date2 ) {
        long diffInMillies = date2.getTime() - date1.getTime();
        return TimeUnit.DAYS.convert(diffInMillies, TimeUnit.MILLISECONDS);
    }
}
