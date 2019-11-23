package org.courses.services.intefaces;

import org.courses.dto.ReservationDto;

public interface DateProcessingService extends Service {
    void setPrepareDateToReservationDto(ReservationDto checkinDate);
}
