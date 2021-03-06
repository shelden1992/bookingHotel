package org.courses.services.userServices;

import org.courses.dao.UserDao;
import org.courses.model.Entity;
import org.courses.model.Reservation;
import org.courses.model.User;
import org.courses.services.intefaces.SelectEntityService;

import java.util.List;

public class UserSelectService implements SelectEntityService {
    private UserDao userDao = new UserDao();

    @Override
    public Entity getEntity(Entity entity) {
        if (entity==null){
            return null;
        }
        User user = (User) entity;

        return userDao.getUserByNameSurnameAndEmail(user);
    }

    @Override
    public List<Reservation> getAllEntity(Entity entity) {
        return null;
    }
}
