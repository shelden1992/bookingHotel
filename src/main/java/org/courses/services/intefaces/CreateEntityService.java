package org.courses.services.intefaces;

import org.courses.model.Entity;
public interface CreateEntityService extends Service {
    boolean addedToDbEntity(Entity entity);
}

