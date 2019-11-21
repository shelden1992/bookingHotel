package org.courses.dao;

import org.apache.log4j.Logger;
import org.courses.model.Photo;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class PhotoRoomDao extends AbstractDao<Photo> {
    private static final Logger LOG = Logger.getLogger(PhotoRoomDao.class);
    private static final String PHOTO_ROOM = "photo_room";
    private static final String ID_PHOTO = "id_photo";
    private static final String ROOM = "room";
    private static final String ROOM_NUMB = "room_numb";
    private static final String PHOTO_LINK = "photo_link";

    private static final String SELECT_ALL = "SELECT_ALL * FROM " + PHOTO_ROOM + ";";
    private static final String SELECT_BY_ID = "SELECT_ALL * FROM " + PHOTO_ROOM + " WHERE " + ID_PHOTO + " =?;";
    private static final String SELECT_ALL_PHOTO_BY_ROOM_ID = "SELECT_ALL * FROM " + PHOTO_ROOM + "JOIN " +
            ROOM + " ON " + PHOTO_ROOM + "." + ROOM_NUMB + " = " + ROOM + "." + ROOM_NUMB + " WHERE " + ROOM + "." + ID_PHOTO + " =?;";
    private static final String INSERT_INTO = "INSERT INTO " + PHOTO_ROOM + "(" + PHOTO_LINK + ") VALUES(?);";
    private static final String DELETE = "DELETE FROM " + PHOTO_ROOM + " WHERE " + ID_PHOTO + "= ?;";
    ;
    private static final String UPDATE_USER_BY_ID = "UPDATE " + PHOTO_ROOM + " SET "
            + ROOM_NUMB + "= ?, "
            + PHOTO_LINK + "= ?, "
            + "WHERE " + ID_PHOTO + " = ?;";


    @Override

    public List<Photo> getAll() {
        LOG.info("Trying SELECT all photo");
        return getAll(SELECT_ALL, this::getPhoto);
    }

    public List<Photo> getAllPhotosRoom(int idRoom) {
        return getListEntityWithCondition(SELECT_ALL_PHOTO_BY_ROOM_ID, ps -> ps.setInt(1, idRoom), this::getPhoto);
    }

    private Photo getPhoto(ResultSet resultSet) throws SQLException {
        return new Photo(resultSet.getInt(ID_PHOTO), resultSet.getInt(ROOM_NUMB), resultSet.getString(PHOTO_LINK));
    }

    @Override
    public Photo getById(int id) {
        LOG.info("Trying SELECT photo WHERE id = " + id);
        return getEntityWithCondition(SELECT_BY_ID, ps -> ps.setInt(1, id), this::getPhoto);
    }

    @Override
    public boolean create(Photo entity) {
        LOG.info("Trying INSERT INTO photo " + entity);
        return createUpdate(INSERT_INTO, ps -> ps.setString(1, entity.getPhotoLink()));
    }

    @Override
    public boolean update(Photo entity) {
        LOG.info("Trying UPDATE room  WHERE idEntity = " + entity.getEntityId());
        return createUpdate(UPDATE_USER_BY_ID, ps -> {
            ps.setInt(1, entity.getRoomId());
            ps.setString(2, entity.getPhotoLink());
            ps.setInt(3, entity.getEntityId());

        });
    }

    @Override
    public boolean remove(int id) {
        LOG.info("Trying DELETE photo WHERE id =" + id);
        return createUpdate(DELETE, ps -> ps.setInt(1, id));
    }
}
