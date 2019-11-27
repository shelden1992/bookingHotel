package org.courses.services.intefaces;

import org.courses.model.Entity;

import java.util.List;

public interface SelectEntityService extends Service {
    Entity getEntity(Entity entity);

    List<? extends Entity> getAllEntity(Entity entity);

    default Entity getEntity(int id) {
        return null;
    }

}
