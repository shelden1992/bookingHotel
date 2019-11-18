package org.courses.services.userServices;

import org.courses.dao.UserDao;
import org.courses.model.Entity;
import org.courses.model.User;
import org.courses.services.CheckReCreationSevice;

public class UserCheckReCreationService implements CheckReCreationSevice {
    UserDao userDao = new UserDao();

    @Override
    public boolean isAlreadyCreation(Entity entity) {
        User user = (User) entity;
        String name = user.getName();
        String surname = user.getSurname();
        String phone = user.getPhone();

        return userDao.getUserByNameSurnameAndPhone(name, surname, phone) != null;
    }
}
