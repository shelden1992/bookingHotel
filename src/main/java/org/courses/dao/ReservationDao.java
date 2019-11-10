package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Reservation;
import org.courses.model.Room;

import java.sql.Date;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ReservationDao extends AbstractDao<Reservation> {
    private static final Logger LOG = Logger.getLogger(ReservationDao.class);
    private static final String RESERVATION = "reservation";
    private static final String ROOM = "room";
    private static final String RESERVATION_ID = "reservation_id";
    private static final String ROOM_NUMB = "room_numb";
    private static final String START_RESERVATION = "start_reservation";
    private static final String FINISH_RESERVATION = "finish_reservation";
    private static final String SELECT_FROM = "SELECT * FROM " + RESERVATION + ";";
    private static final String SELECT_BY_ID = "SELECT * FROM " + RESERVATION + " WHERE " + RESERVATION_ID + " =?;";
    private static final String SELECT_RESERVATION_BY_ROOM_NUMB = "SELECT * FROM " +
            RESERVATION + "as reserv JOIN " + ROOM + " as r on reserv." + ROOM_NUMB + "= r." + ROOM_NUMB + " WHERE r." + ROOM_NUMB + " = ?;";
    private static final String SELECT_RESERVATION_BETWEEN_DATE = "SELECT * FROM " +
            RESERVATION + "as reserv JOIN " + ROOM + " as r on reserv." + ROOM_NUMB + "= r." + ROOM_NUMB + " WHERE ? BETWEEN "
            + START_RESERVATION + " AND "
            + FINISH_RESERVATION + ";";
    private static final String SELECT_RESERVATION_NOT_BETWEEN_DATE = "SELECT * FROM " +
            RESERVATION + "as reserv JOIN " + ROOM + " as r on reserv." + ROOM_NUMB + "= r." + ROOM_NUMB + " WHERE ? NOT BETWEEN "
            + START_RESERVATION + " AND "
            + FINISH_RESERVATION + ";";

    private static final String SELECT_FREE_ROOM_BETWEEN_DATE = "SELECT * FROM " +
            RESERVATION + "as reserv JOIN " + ROOM + " as r on reserv." + ROOM_NUMB + "= r." + ROOM_NUMB + " WHERE ? AND ? NOT BETWEEN "
            + START_RESERVATION + " AND "
            + FINISH_RESERVATION + ";";
    private static final String DELETE = "DELETE FROM " +
            RESERVATION + " WHERE " + RESERVATION_ID + " =?;";
    private static final String INSERT_INTO = "INSERT INTO " +
            RESERVATION + "("
            + ROOM_NUMB + ", "
            + START_RESERVATION + ","
            + FINISH_RESERVATION + ") VALUES(?,?,?);";

    private static final String UPADATE_BY_ID = "UPDATE " + RESERVATION + " SET "
            + ROOM_NUMB + "= ?, "
            + START_RESERVATION + "= ?, "
            + FINISH_RESERVATION + "= ?, "
            + "WHERE " + RESERVATION_ID + " = ?;";


    @Override
    public List<Reservation> getAll() {
        LOG.info("Trying SELECT all reservation");
        return getAll(SELECT_FROM, this::getReservation);
    }

    @Override
    public Reservation getById(int id) {
        LOG.info("Trying SELECT reservation WHERE id = " + id);
        return getEntityWithCondition(SELECT_BY_ID, ps -> ps.setInt(1, id), this::getReservation);
    }

    @Override
    public boolean create(Reservation entity) {
        LOG.info("Trying INSERT INTO reservation " + entity);
        return createUpdate(INSERT_INTO, ps -> {
            ps.setInt(1, entity.getRoom().getRoom_numb());
            ps.setDate(2, entity.getStartReservation());
            ps.setDate(3, entity.getFinishReservation());
        });
    }

    @Override
    public boolean update(Reservation entity) {
        LOG.debug("Trying UPDATE reservation  WHERE reservationId = " + entity.getReservationId());
        return createUpdate(UPADATE_BY_ID, ps -> {
            ps.setInt(1, entity.getRoom().getRoom_numb());
            ps.setDate(2, entity.getStartReservation());
            ps.setDate(3, entity.getFinishReservation());
            ps.setInt(4, entity.getReservationId());
        });
    }

    @Override
    public boolean remove(int id) {
        LOG.info("Trying DELETE reservation WHERE id =" + id);
        return createUpdate(DELETE, ps -> ps.setInt(1, id));
    }

    public List<Reservation> getAllReservationWithReservedRoomsOnThisDate(Date date) {
        LOG.info("Trying SELECT all reservation all reserved rooms on this date " + date);
        return getListEntityWithCondition(SELECT_RESERVATION_BETWEEN_DATE, ps -> ps.setDate(1, date),
                this::getReservation);
    }

    public List<Reservation> getAllReservationWithNotReservedRoomsOnThisDate(Date date) {
        LOG.info("Trying SELECT all reservation all not reserved rooms on this date " + date);
        return getListEntityWithCondition(SELECT_RESERVATION_NOT_BETWEEN_DATE, ps -> ps.setDate(1, date),
                this::getReservation);
    }

    public List<Reservation> getAllReservationWithNotReservedRoomsBetweenDate(Date startDate, Date finishDate) {
        LOG.info("Trying SELECT all reservation all not reserved rooms between date " + startDate + " and " + finishDate);
        return getListEntityWithCondition(SELECT_FREE_ROOM_BETWEEN_DATE, ps -> {
                    ps.setDate(1, startDate);
                    ps.setDate(2, finishDate);
                },
                this::getReservation);
    }

    public List<Reservation> getAllReservationRoomByRoomNumb(int roomNumb) {
        LOG.info("Trying SELECT all reservation by room numb " + roomNumb);
        return getListEntityWithCondition(SELECT_RESERVATION_BY_ROOM_NUMB, ps -> ps.setInt(1, roomNumb),
                this::getReservation);
    }

    private Reservation getReservation(ResultSet resultSet) throws SQLException {
        return new Reservation(resultSet.getInt(RESERVATION_ID), getRoomById(resultSet), resultSet.getDate(START_RESERVATION), resultSet.getDate(FINISH_RESERVATION));
    }

    private Room getRoomById(ResultSet resultSet) throws SQLException {
        return new RoomDao().getById(resultSet.getInt(ROOM_NUMB));
    }
}
