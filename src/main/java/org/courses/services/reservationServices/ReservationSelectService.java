package org.courses.services.reservationServices;

import org.courses.dao.ReservationDao;
import org.courses.model.Entity;
import org.courses.model.Reservation;
import org.courses.services.intefaces.SelectEntityService;

import java.util.List;

public class ReservationSelectService implements SelectEntityService {
    private ReservationDao reservationDao = new ReservationDao();


    @Override
    public Entity getEntity(Entity entity) {
        return null;
    }

    @Override
    public List<? extends Entity> getAllEntity(Entity entity) {
        Reservation reservation = (Reservation) entity;

        return reservationDao.findFreeRoomsBetweenDateByRoomTypeAndPlace(reservation);

    }

    public List<? extends Entity> getAllRoomsByPlace(Entity entity) {
        Reservation reservation = (Reservation) entity;

        return reservationDao.findFreeRoomsBetweenDateByPlace(reservation);

    }
}
