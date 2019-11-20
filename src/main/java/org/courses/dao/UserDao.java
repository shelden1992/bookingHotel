package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.User;
import org.courses.model.UserRole;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

public class UserDao extends AbstractDao<User> {
    private static final Logger LOG = Logger.getLogger(UserDao.class);
    private static final UserRole[] USER_ROLES = {UserRole.ADMIN, UserRole.USER};

    private static final String USER = "user";
    private static final String USER_ID = "user_id";
    private static final String NAME = "name";
    private static final String SURNAME = "surname";
    private static final String EMAIL = "email";
    private static final String PASSWORD = "password";
    private static final String PHONE = "phone";
    private static final String USER_ROLE = "user_role";
    private static final String ADDITIONAL_INFO = "additional_info";
    private static final String SELECT_FROM = "SELECT * FROM " + USER;
    private static final String INSERT_INTO = "INSERT INTO " + USER
            + "(" + NAME + ", " + SURNAME + ", " + EMAIL + ", "
            + PASSWORD + ", " + PHONE + ", " + USER_ROLE + ", " + ADDITIONAL_INFO + ")" +
            "VALUES ( ?, ?, ?, ?, ?,?,?);";
    private static final String DELETE_USER = "DELETE FROM " + USER + " WHERE " + USER_ID + "= ?;";
    private static final String UPDATE_USER_BY_ID = "UPDATE " + USER + " SET "
            + NAME + "= ?, "
            + SURNAME + "= ?, "
            + EMAIL + "= ?, "
            + PASSWORD + "= ?, "
            + PHONE + "= ?, "
            + USER_ROLE + "= ?, "
            + ADDITIONAL_INFO + "= ? " +
            "WHERE " + USER_ID + " = ?;";
    private static final String GET_BY_ID = "SELECT * FROM " + USER + " WHERE " + USER_ID + " =?;";
    private static final String GET_BY_NAME_AND_SURNAME_AND_PHONE = "SELECT * FROM " + USER + " WHERE " + NAME + " =? AND "
            + SURNAME + " =? AND " + PHONE + " =?;";

    private static final String GET_BY_NAME_AND_SURNAME = "SELECT * FROM " + USER + " WHERE " + NAME + " =? AND "
            + SURNAME + " =?;";

    @Override
    public List<User> getAll() {
        LOG.info("Trying SELECT all user ");
        return getAll(SELECT_FROM, this::getUser);
    }

    @Override
    public User getById(int id) {
        return getEntityWithCondition(GET_BY_ID, ps -> ps.setInt(1, id), this::getUser);
    }

    private User getUser(ResultSet resultSet) throws SQLException {
        return new User(resultSet.getInt(USER_ID), resultSet.getString(NAME), resultSet.getString(SURNAME), resultSet.getString(EMAIL),
                resultSet.getString(PASSWORD), resultSet.getString(PHONE), getUserRole(resultSet), resultSet.getString(ADDITIONAL_INFO));
    }

    public User getUserByNameSurnameAndPhone(String name, String surname, String phone) {
        return getEntityWithCondition(GET_BY_NAME_AND_SURNAME_AND_PHONE, ps -> {
            ps.setString(1, name);
            ps.setString(2, surname);
            ps.setString(3, phone);

        }, this::getUser);
    }

    public User getUserByNameSurnameAndPhone(String name, String surname) {
        return getEntityWithCondition(GET_BY_NAME_AND_SURNAME, ps -> {
            ps.setString(1, name);
            ps.setString(2, surname);

        }, this::getUser);
    }


    @Override
    public boolean create(User entity) {
        LOG.info("Trying INSERT INTRO user " + entity);

        return createUpdate(INSERT_INTO, ps -> {
            ps.setString(1, entity.getName());
            ps.setString(2, entity.getSurname());
            ps.setString(3, entity.getEmail());
            ps.setString(4, entity.getPassword());
            ps.setString(5, entity.getPhone());
            ps.setString(6, entity.getUserRole().getUserRoleName());
            ps.setString(7, entity.getAdditionalInfo());
        });

    }

    @Override
    public boolean update(User entity) {
        LOG.debug("Trying UPDATE user = " + entity.getName() + " idEntity = " + entity.getEntityId());
        return createUpdate(UPDATE_USER_BY_ID, ps -> {
            ps.setString(1, entity.getName());
            ps.setString(2, entity.getSurname());
            ps.setString(3, entity.getEmail());
            ps.setString(4, entity.getPassword());
            ps.setString(5, entity.getPhone());
            ps.setString(6, entity.getUserRole().getUserRoleName());
            ps.setString(7, entity.getAdditionalInfo());
            ps.setInt(8, entity.getEntityId());
        });
    }

    @Override
    public boolean remove(int id) {
        LOG.info("Trying DELETE user WHERE id =" + id);
        return createUpdate(DELETE_USER, ps -> {
            ps.setInt(1, id);
        });
    }

    private UserRole getUserRole(ResultSet resultSet) throws SQLException {
        return getUserRole(resultSet.getString(USER_ROLE));
    }

    private UserRole getUserRole(String inTable) {
        return Arrays.stream(USER_ROLES).filter(role -> role.getUserRoleName().equals(inTable)).findAny().orElse(null);
    }

}
