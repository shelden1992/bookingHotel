package org.courses.services.userServices;

import org.courses.dao.UserDao;
import org.courses.model.Entity;
import org.courses.model.User;
import org.courses.services.intefaces.CheckExistService;

public class UserCheckExistService implements CheckExistService {
    private UserDao userDao = new UserDao();

    @Override
    public boolean isExist(Entity entity) {
        if (entity == null) {
            return false;
        }
        User user = (User) entity;

        return userDao.getUserByNameSurnameAndEmail(user) != null;
    }
}
