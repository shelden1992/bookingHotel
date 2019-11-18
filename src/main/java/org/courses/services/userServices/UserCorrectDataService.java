package org.courses.services.userServices;

import org.courses.model.Entity;
import org.courses.model.User;
import org.courses.services.CorrectDataService;

public class UserCorrectDataService implements CorrectDataService {
    @Override
    public boolean isCorrectData(Entity entity) {
        User user = (User) entity;

        String name = user.getName();
        String surname = user.getSurname();
        String password = user.getPassword();
        String email = user.getEmail();
        if (name == null || name.isEmpty()) {
            return false;
        } else if (surname == null || surname.isEmpty()) {
            return false;
        } else if (password == null || password.isEmpty()) {
            return false;
        } else return email != null && !email.isEmpty();
    }
}
