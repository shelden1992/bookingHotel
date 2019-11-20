package org.courses.services.userServices;

import org.courses.dao.UserDao;
import org.courses.model.Entity;
import org.courses.model.User;
import org.courses.services.CreateService;

public class UserCreateService implements CreateService {
    private UserDao userDao = new UserDao();

    @Override
    public boolean insertEntity(Entity entity) {
        if (entity == null) {
            return false;
        }
        return userDao.create((User) entity);
    }
}
