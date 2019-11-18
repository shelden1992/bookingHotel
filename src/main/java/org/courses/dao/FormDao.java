package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Form;
import org.courses.model.Reservation;
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


    @Override
    public List<Form> getAll() {
        LOG.info("Trying SELECT all reservation");
        return getAll(SELECT_FROM, this::getForm);
    }

    private Form getForm(ResultSet resultSet) throws SQLException {
        return new Form(resultSet.getInt(FORM_ID), getUserById(resultSet), getReservationById(resultSet), resultSet.getString(ADDITIONAL_INFO));
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
            ps.setInt(2, entity.getReservation().getEntityId());
            ps.setString(3, entity.getAdditionalInfo());
        });
    }

    @Override
    public boolean update(Form entity) {
        LOG.info("Trying UPDATE form WHERE formId = " + entity.getEntityId());
        return createUpdate(UPDATE_FORM_BY_ID, ps -> {
            ps.setInt(1, entity.getUser().getEntityId());
            ps.setInt(2, entity.getReservation().getEntityId());
            ps.setString(3, entity.getAdditionalInfo());
            ps.setInt(4, entity.getEntityId());
        });
    }

    @Override
    public boolean remove(int id) {
        LOG.info("Trying DELETE form WHERE id = " + id);
        return createUpdate(DELETE, ps -> ps.setInt(1, id));
    }
}
