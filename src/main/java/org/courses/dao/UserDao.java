package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.entity.User;
import org.courses.entity.UserRole;

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
    private static final String SELECT_FROM = "SELECT * FROM " + USER;
    private static final String CREATE_USER = "INSERT INTO " + USER + "(" + NAME + ", " + SURNAME + ", " + EMAIL + ", " + PASSWORD + ", " + PHONE + ", " + USER_ROLE + ")" +
            "VALUES ( ?, ?, ?, ?, ?,?);";

    private static final String DELETE_USER = "DELETE FROM " + USER + " WHERE " + USER_ID + "=?;";
    private static final String UPDATE_USER_BY_ID = "UPDATE " + USER + " SET "
            + NAME + "= ?, "
            + SURNAME + "= ?, "
            + EMAIL + "= ?, "
            + PASSWORD + "= ?, "
            + PHONE + "= ?, "
            + USER_ROLE + "= ? " +
            "WHERE " + USER_ID + " = ?;";

    @Override
    public List<User> getAll() {
        LOG.info("Trying get all user ");
        return getAll(SELECT_FROM, resultSet -> new User(resultSet.getInt(USER_ID), resultSet.getString(NAME),
                resultSet.getString(SURNAME), resultSet.getString(EMAIL), resultSet.getString(PASSWORD), resultSet.getString(PHONE), getUserRole(resultSet.getInt(USER_ROLE))));
    }

    @Override
    public boolean create(User entity) {
        LOG.info("Trying insert user " + entity);

        return createUpdate(CREATE_USER, ps -> {
            ps.setString(1, entity.getName());
            ps.setString(2, entity.getSurname());
            ps.setString(3, entity.getEmail());
            ps.setString(4, entity.getPassword());
            ps.setString(5, entity.getPhone());
            ps.setInt(6, entity.getUserRole().getUserRoleId());
        });

    }

    @Override
    public boolean update(User entity) {

        LOG.debug("Trying update entity = " + entity.getName() + " idEntity = " + entity.getUsers_id());
        return createUpdate(UPDATE_USER_BY_ID, ps -> {
            ps.setString(1, entity.getName());
            ps.setString(2, entity.getSurname());
            ps.setString(3, entity.getEmail());
            ps.setString(4, entity.getPassword());
            ps.setString(5, entity.getPhone());
            ps.setInt(6, entity.getUserRole().getUserRoleId());
            ps.setInt(7, entity.getUsers_id());
        });
    }

    @Override
    public boolean remove(User entity) {
        LOG.info("Trying remove user " + entity);
        return createUpdate(DELETE_USER, ps -> {
            ps.setInt(1, entity.getUsers_id());
        });
    }

    private UserRole getUserRole(int inTable) {
        return Arrays.stream(USER_ROLES).filter(role -> role.getUserRoleId() == inTable).findAny().orElse(null);
    }

}
