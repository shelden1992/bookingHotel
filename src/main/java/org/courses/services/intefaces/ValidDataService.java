package org.courses.services.intefaces;

import org.courses.model.Entity;

public interface ValidDataService extends Service {
    boolean isLoginValid(Entity entity);
    boolean isRegisterValid(Entity entity);
}
