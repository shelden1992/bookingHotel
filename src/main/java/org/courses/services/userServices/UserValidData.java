package org.courses.services.userServices;

import org.courses.model.Entity;
import org.courses.model.User;
import org.courses.services.intefaces.ValidDataService;

public class UserValidData implements ValidDataService {
    @Override
    public boolean isLoginValid(Entity entity) {
        if (entity == null) {
            return false;
        }
        User user = (User) entity;
        String name = user.getName();
        String surname = user.getSurname();
        String password = user.getPassword();
        String email = user.getEmail();
        if (name == null || name.isEmpty()) {
            return false;
        } else if (surname == null || surname.isEmpty()) {
            return false;

        } else if (email == null || email.isEmpty()) {
            return false;
        } else return password != null && !password.isEmpty();
    }

    @Override
    public boolean isRegisterValid(Entity entity) {
        if (entity == null) {
            return false;
        }
        User user = (User) entity;
        String name = user.getName();
        String surname = user.getSurname();
        String password = user.getPassword();
        String phone = user.getPhone();
        String email = user.getEmail();
        if (name == null || name.isEmpty()) {
            return false;
        } else if (surname == null || surname.isEmpty()) {
            return false;
        } else if (password == null || password.isEmpty()) {
            return false;
        } else if (phone == null || phone.isEmpty()) {
            return false;
        } else return email != null && !email.isEmpty();
    }
}
