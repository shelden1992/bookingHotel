package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Form;
import org.courses.model.Reservation;
import org.courses.model.Room;
import org.courses.model.User;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class FormDao extends AbstractDao<Form> {
    private static final Logger LOG = Logger.getLogger(FormDao.class);
    private static final String FORM = "form";
    private static final String FORM_ID = "form_id";
    private static final String USER_ID = "user_id";
    private static final String RESERVATION_ID = "reservation_id";
    private static final String ADDITIONAL_INFO = "additional_info";
    private static final String RESERVATION = "reservation";
    private static final String ROOM = "room";
    private static final String ROOM_NUMB = "room_numb";
    private static final String START_RESERVATION = "start_reservation";
    private static final String FINISH_RESERVATION = "finish_reservation";
    private static final String PLACE = "place";
    private static final String ROOM_TYPE = "type";
    private static final String ROOM_TYPE_ALL = "ALL";
    private static final String SELECT_FROM = "SELECT * FROM " + FORM + ";";


    private static final String SELECT_FROM_BY_ID = "SELECT * FROM " + FORM + "WHERE " + USER_ID + " =?;";
    private static final String DELETE = "DELETE FROM " + FORM + "WHERE " + USER_ID + " =?;";
    private static final String INSERT_INTO = "INSERT INTO" + FORM + "("
            + USER_ID + ", "
            + RESERVATION_ID + ", "
            + ADDITIONAL_INFO + ") VALUES(?, ?, ?);";
    private static final String UPDATE_FORM_BY_ID = "UPDATE " + FORM + " SET "
            + USER_ID + "= ?, "
            + RESERVATION_ID + "= ?, "
            + ADDITIONAL_INFO + "= ? "
            + "WHERE " + FORM_ID + " = ?;";

    private static final String SELECT_FREE_ROOM_BETWEEN_DATE_AND_SOME_ROOM_TYPE_AND_PLACE = "SELECT reserv.reservation_id, r.room_numb, reserv.start_reservation, reserv.finish_reservation, is_reserved, place, price, type FROM " + FORM + " as f "
            + " RIGHT JOIN " + RESERVATION + " as reserv ON " + "f." + RESERVATION_ID + "=" + "reserv." + RESERVATION_ID
            + " RIGHT JOIN " + ROOM + " as r on reserv." + ROOM_NUMB + "= r." + ROOM_NUMB + " WHERE ? AND ? NOT BETWEEN "
            + "reserv." + START_RESERVATION + " AND "
            + "reserv." + FINISH_RESERVATION + " AND "
            + "r." + PLACE + ">=? AND "
            + "r." + ROOM_TYPE + "=? OR \'" + ROOM_TYPE_ALL + "\' = ?;";


    @Override
    public List<Form> getAll() {
        LOG.info("Trying SELECT all reservation");
        return getAll(SELECT_FROM, this::getForm);
    }

    private Form getForm(ResultSet resultSet) throws SQLException {

        return new Form(resultSet.getInt(FORM_ID), getUserById(resultSet), getReservationById(resultSet), resultSet.getString(ADDITIONAL_INFO));
    }

    private Form getFormDto(ResultSet resultSet) throws SQLException {
        return new Form(getReservationById(resultSet));
    }

    private Reservation getReservationById(ResultSet resultSet) throws SQLException {
        return new ReservationDao().getById(resultSet.getInt(RESERVATION_ID));
    }

    private User getUserById(ResultSet resultSet) throws SQLException {
        return new UserDao().getById(resultSet.getInt(USER_ID));
    }

    @Override
    public Form getById(int id) {
        LOG.info("Trying SELECT form WHERE id = " + id);
        return getEntityWithCondition(SELECT_FROM_BY_ID, ps -> ps.setInt(1, id), this::getForm);
    }

    @Override
    public boolean create(Form entity) {
        LOG.info("Trying INSERT INTO reservation " + entity);
        return createUpdate(INSERT_INTO, ps -> {
            ps.setInt(1, entity.getUser().getEntityId());
            ps.setInt(2, getReservation(entity).getEntityId());
            ps.setString(3, entity.getAdditionalInfo());
        });
    }

    @Override
    public boolean update(Form entity) {
        LOG.info("Trying UPDATE form WHERE formId = " + entity.getEntityId());
        return createUpdate(UPDATE_FORM_BY_ID, ps -> {
            ps.setInt(1, entity.getUser().getEntityId());
            ps.setInt(2, getReservation(entity).getEntityId());
            ps.setString(3, entity.getAdditionalInfo());
            ps.setInt(4, entity.getEntityId());
        });
    }

    @Override
    public boolean remove(int id) {
        LOG.info("Trying DELETE form WHERE id = " + id);
        return createUpdate(DELETE, ps -> ps.setInt(1, id));
    }

    public List<Form> findFreeRoomsBetweenDateByRoomTypeAndAdults(Form entity) {
        LOG.info("Trying SELECT all FORM all not reserved rooms between date " + getReservation(entity).getStartReservation() + " and " + getReservation(entity).getFinishReservation());
        return getListEntityWithCondition(SELECT_FREE_ROOM_BETWEEN_DATE_AND_SOME_ROOM_TYPE_AND_PLACE, ps -> {
                    ps.setDate(1, getReservation(entity).getStartReservation());
                    ps.setDate(2, getReservation(entity).getFinishReservation());
                    ps.setInt(3, getRoom(entity).getPlace());
                    ps.setString(4, getRoom(entity).getRoomType().getName());
                    ps.setString(5, getRoom(entity).getRoomType().getName());
                },
                this::getFormDto);
    }

    private Room getRoom(Form entity) {
        return getReservation(entity).getRoom();
    }

    private Reservation getReservation(Form entity) {
        return entity.getReservation();
    }
}
