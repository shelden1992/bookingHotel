package org.courses.services.intefaces;

import org.courses.model.Entity;

public interface CheckExistService extends Service {
    boolean isExist(Entity entity);
}
