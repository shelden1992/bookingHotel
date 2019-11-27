package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Photo;
import org.courses.model.Room;
import org.courses.model.RoomType;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.Arrays;
import java.util.List;

public class RoomDao extends AbstractDao<Room> {
    private static final Logger LOG = Logger.getLogger(RoomDao.class);
    private static final RoomType[] ROOM_TYPES = RoomType.values();
    private static final String ROOM = "room";
    private static final String ROOM_NUMB = "room_numb";
    private static final String PLACE = "place";
    private static final String PRICE = "price";
    private static final String TYPE = "type";
    private static final String SELECT_FROM = "SELECT * FROM " + ROOM + ";";
    private static final String INSERT_INTO = "INSERT INTO " + ROOM + "("
            + PLACE + ", "
            + PRICE + ", "
            + TYPE
            + ") VALUES(?,?,?);";
    private static final String SELECT_BY_ID = "SELECT * FROM " + ROOM + " WHERE "
            + ROOM_NUMB + " = ?;";

    private static final String SELECT_ID = "SELECT * FROM " + ROOM + " WHERE "
            + PLACE + " = ? AND "
            + PRICE + " = ? AND "
            + TYPE + " =?; ";

    private static final String DELETE = "DELETE FROM " + ROOM + " WHERE " + ROOM_NUMB + "= ?;";
    private static final String UPDATE_USER_BY_ID = "UPDATE " + ROOM + " SET "
            + PLACE + "= ?, "
            + PRICE + "= ?, "
            + TYPE + "= ?, "
            + "WHERE " + ROOM_NUMB + " = ?;";


    @Override
    public List<Room> getAll() {
        LOG.info("Trying SELECT all rooms");
        return getAll(SELECT_FROM, this::getRoom);
    }


    @Override
    public Room getById(int id) {
        LOG.info("Trying SELECT room WHERE id = " + id);
        return getEntityWithCondition(SELECT_BY_ID, ps -> ps.setInt(1, id), this::getRoom);
    }

    public int getId(Room room) {
        LOG.info("Trying SELECT id ");
        return getEntityWithCondition(SELECT_ID, ps -> {
            ps.setInt(1, room.getPlace());
            ps.setDouble(2, room.getPrice());
            ps.setString(3, room.getRoomType().getName());
        }, this::getRoom).getEntityId();
    }

    private Room getRoom(ResultSet resultSet) throws SQLException {

        int roomId = resultSet.getInt(ROOM_NUMB);
        List<Photo> allPhotosRoom = new PhotoRoomDao().getAllPhotosRoom(roomId);
        return new Room(roomId, resultSet.getInt(PLACE), resultSet.getDouble(PRICE), getRoomType(resultSet.getString(TYPE)), allPhotosRoom);
    }

    @Override
    public boolean create(Room entity) {
        LOG.info("Trying INSERT INTO room " + entity);
        return createUpdate(INSERT_INTO, ps -> {
            ps.setInt(1, entity.getPlace());
            ps.setDouble(2, entity.getPrice());
            ps.setString(3, entity.getRoomType().getName());
        });
    }

    @Override
    public boolean update(Room entity) {
        LOG.info("Trying UPDATE room  WHERE idEntity = " + entity.getEntityId());
        return createUpdate(UPDATE_USER_BY_ID, ps -> {
            ps.setInt(1, entity.getPlace());
            ps.setDouble(2, entity.getPrice());
            ps.setString(3, entity.getRoomType().getName());
            ps.setInt(4, entity.getEntityId());

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
