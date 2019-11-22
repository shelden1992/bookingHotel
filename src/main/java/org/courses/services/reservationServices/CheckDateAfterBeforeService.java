package org.courses.services.reservationServices;

import java.util.Date;

public class CheckDateAfterBeforeService {
    boolean dateAfter(Date date) {
        return date.after(date);
    }

    boolean dateBefore(Date date) {
        return date.before(date);
    }
}
