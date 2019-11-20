package org.courses.services.userServices;

import org.courses.model.Entity;
import org.courses.model.User;
import org.courses.services.CorrectDataService;

public class UserCorrectDataToLoginService implements CorrectDataService {
    @Override
    public boolean isCorrectData(Entity entity) {
        if (entity == null) {
            return false;
        }
        User user = (User) entity;
        String name = user.getName();
        String surname = user.getSurname();
        String password = user.getPassword();
        if (name == null || name.isEmpty()) {
            return false;
        } else if (surname == null || surname.isEmpty()) {
            return false;
        } else return password != null && !password.isEmpty();
    }
}
