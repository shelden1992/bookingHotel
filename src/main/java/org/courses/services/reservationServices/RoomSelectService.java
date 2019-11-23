package org.courses.services.reservationServices;

import org.courses.dao.ReservationDao;
import org.courses.dto.ReservationDto;
import org.courses.model.Entity;
import org.courses.services.intefaces.SelectEntityService;

import java.util.List;

public class RoomSelectService implements SelectEntityService {
    private ReservationDao reservationDao = new ReservationDao();


    @Override
    public Entity getEntity(Entity entity) {
        return null;
    }

    @Override
    public List<? extends Entity> getAllEntity(Entity entity) {
        ReservationDto reservationDto = (ReservationDto) entity;

        return reservationDao.findFreeRoomsBetweenDateByRoomTypeAndAdults(reservationDto);

    }
}
