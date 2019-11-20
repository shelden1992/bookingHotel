package org.courses.services.userServices;

import org.courses.dao.UserDao;
import org.courses.model.Entity;
import org.courses.model.User;
import org.courses.services.SelectEntityService;

public class UserSelectService implements SelectEntityService {
    private UserDao userDao = new UserDao();

    @Override
    public Entity selectEntity(Entity entity) {
        if (entity==null){
            return null;
        }
        User user = (User) entity;

        return userDao.getUserByNameSurnameAndPhone(user.getName(), user.getSurname());
    }
}
