package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Room;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class RoomDao extends AbstractDao<Room> {
    private static final Logger LOG = Logger.getLogger(RoomDao.class);
    private static final String ROOM = "room";
    private static final String ROOM_NUMB = "room_numb";
    private static final String IS_RESERVED = "is_reserved";
    private static final String PLACE = "place";
    private static final String PRICE = "price";
    private static final String USER_ASSESSMENT = "user_assessment";
    private static final String SELECT_FROM = "SELECT * FROM " + ROOM + ";";
    private static final String INSERT_INTO = "INSERT INTO " + ROOM + "("
            + IS_RESERVED + ", "
            + PLACE + ", "
            + PRICE + ", "
            + USER_ASSESSMENT
            + ") VALUES(?,?,?,?);";
    private static final String SELECT_BY_ID = "SELECT * FROM " + ROOM + " WHERE "
            + ROOM_NUMB + " = ?;";
    private static final String SELECT_NOT_RESERVED = "SELECT * FROM " + ROOM + " WHERE "
            + IS_RESERVED + " = ?;";

    private static final String DELETE = "DELETE FROM " + ROOM + " WHERE " + ROOM_NUMB + "= ?;";
    private static final String UPDATE_USER_BY_ID = "UPDATE " + ROOM + " SET "
            + IS_RESERVED + "= ?, "
            + PLACE + "= ?, "
            + PRICE + "= ?, "
            + USER_ASSESSMENT + "= ?, "
            + "WHERE " + ROOM_NUMB + " = ?;";


    @Override
    public List<Room> getAll() {
        LOG.info("Trying SELECT all rooms");
        return getAll(SELECT_FROM, this::getRoom);
    }

    public List<Room> getAllNotReserved() {
        LOG.info("Trying SELECT all rooms not reserved");
        return getListEntityWithCondition(SELECT_NOT_RESERVED, ps -> ps.setBoolean(1, false), this::getRoom);
    }

    @Override
    public Room getById(int id) {
        LOG.info("Trying SELECT room WHERE id = " + id);
        return getEntityWithCondition(SELECT_BY_ID, ps -> ps.setInt(1, id), this::getRoom);
    }

    private Room getRoom(ResultSet resultSet) throws SQLException {
        return new Room(resultSet.getInt(ROOM_NUMB), resultSet.getBoolean(IS_RESERVED),
                resultSet.getInt(PLACE), resultSet.getDouble(PRICE), resultSet.getDouble(USER_ASSESSMENT));
    }

    @Override
    public boolean create(Room entity) {
        LOG.info("Trying INSERT INTO room " + entity);
        return createUpdate(INSERT_INTO, ps -> {
            ps.setBoolean(1, entity.isReserved());
            ps.setInt(2, entity.getPlace());
            ps.setDouble(3, entity.getPrice());
            ps.setDouble(4, entity.getUserAssessment());
        });
    }

    @Override
    public boolean update(Room entity) {
        LOG.debug("Trying UPDATE room  WHERE idEntity = " + entity.getRoom_numb());
        return createUpdate(UPDATE_USER_BY_ID, ps -> {
            ps.setBoolean(1, entity.isReserved());
            ps.setInt(2, entity.getPlace());
            ps.setDouble(3, entity.getPrice());
            ps.setDouble(4, entity.getUserAssessment());
            ps.setInt(5, entity.getRoom_numb());

        });
    }

    @Override
    public boolean remove(int id) {
        LOG.info("Trying DELETE room WHERE id =" + id);
        return createUpdate(DELETE, ps -> ps.setInt(1, id));
    }

}
