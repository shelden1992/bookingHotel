package org.courses.services;

import org.courses.dao.RoomDao;
import org.courses.model.Reservation;
import org.courses.model.Room;

import java.util.List;

public class SelectRoomService {
    private RoomDao roomDao = new RoomDao();

    public List<Room> getAllEntity() {
        return roomDao.getAll();
    }

    public List<Room> getAllEntity(Reservation reservation) {
        return null;
    }
}
