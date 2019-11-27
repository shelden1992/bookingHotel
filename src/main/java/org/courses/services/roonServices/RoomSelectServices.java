package org.courses.services.roonServices;

import org.courses.dao.RoomDao;
import org.courses.model.Entity;
import org.courses.services.intefaces.SelectEntityService;

import java.util.List;

public class RoomSelectServices implements SelectEntityService {
    RoomDao roomDao = new RoomDao();

    @Override
    public Entity getEntity(int id) {
        return roomDao.getById(id);
    }

    @Override
    public Entity getEntity(Entity entity) {
        return roomDao.getById(entity.getEntityId());
    }

    @Override
    public List<? extends Entity> getAllEntity(Entity entity) {
        return null;
    }
}
