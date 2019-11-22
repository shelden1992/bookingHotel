package org.courses.services.reservationServices;

import org.apache.log4j.Logger;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.Locale;

public class DateProcessingService {
    public static final Logger LOG = Logger.getLogger(DateProcessingService.class);
    private SimpleDateFormat sdf1 = new SimpleDateFormat("dd MMMM, yyyy", Locale.US);
    private SimpleDateFormat sdfForDb = new SimpleDateFormat("yyyy-MM-dd");

    public java.sql.Date getSqlDateFromParameter(String checkinDate) {
        if (checkinDate == null || checkinDate.isEmpty()) {
            return null;
        }
        java.sql.Date date = null;
        try {
            Date parse = sdf1.parse(checkinDate);
            date = java.sql.Date.valueOf(sdfForDb.format(parse));

        } catch (ParseException e) {
            LOG.error("Date not parse to valid form ", e);
        }
        return date;
    }


}
