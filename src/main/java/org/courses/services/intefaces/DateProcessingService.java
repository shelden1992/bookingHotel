package org.courses.services.intefaces;

public interface DateProcessingService extends Service {
    java.sql.Date getValidDateCheckOut(String notParseDateCheckOut, java.sql.Date validDateCheckIn);

    java.sql.Date getValidDateCheckIn(String notParseDateCheckIn);

}
