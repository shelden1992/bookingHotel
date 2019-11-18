package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Room;
import org.courses.model.RoomType;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

public class RoomDao extends AbstractDao<Room> {
    private static final Logger LOG = Logger.getLogger(RoomDao.class);
    private static final RoomType[] ROOM_TYPES = {RoomType.BUSINESS, RoomType.COMFORT, RoomType.FAMILY_REST, RoomType.LUX, RoomType.RELAX};
    private static final String ROOM = "room";
    private static final String ROOM_NUMB = "room_numb";
    private static final String IS_RESERVED = "is_reserved";
    private static final String PLACE = "place";
    private static final String PRICE = "price";
    private static final String TYPE = "type";
    private static final String SELECT_FROM = "SELECT * FROM " + ROOM + ";";
    private static final String INSERT_INTO = "INSERT INTO " + ROOM + "("
            + IS_RESERVED + ", "
            + PLACE + ", "
            + PRICE + ", "
            + TYPE
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
            + TYPE + "= ?, "
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
                resultSet.getInt(PLACE), resultSet.getDouble(PRICE), getRoomType(resultSet.getString(TYPE)));
    }

    @Override
    public boolean create(Room entity) {
        LOG.info("Trying INSERT INTO room " + entity);
        return createUpdate(INSERT_INTO, ps -> {
            ps.setBoolean(1, entity.isReserved());
            ps.setInt(2, entity.getPlace());
            ps.setDouble(3, entity.getPrice());
            ps.setString(4, entity.getRoomType().getName());
        });
    }

    @Override
    public boolean update(Room entity) {
        LOG.debug("Trying UPDATE room  WHERE idEntity = " + entity.getEntityId());
        return createUpdate(UPDATE_USER_BY_ID, ps -> {
            ps.setBoolean(1, entity.isReserved());
            ps.setInt(2, entity.getPlace());
            ps.setDouble(3, entity.getPrice());
            ps.setString(4, entity.getRoomType().getName());
            ps.setInt(5, entity.getEntityId());

        });
    }

    @Override
    public boolean remove(int id) {
        LOG.info("Trying DELETE room WHERE id =" + id);
        return createUpdate(DELETE, ps -> ps.setInt(1, id));
    }

    private RoomType getRoomType(String inTable) {
        return Arrays.stream(ROOM_TYPES).filter(type -> type.getName().equals(inTable)).findAny().orElse(null);
    }

}
