package org.courses.model;

import java.util.StringJoiner;

public class User extends Entity {
    private String name;
    private String surname;
    private String email;
    private String password;
    private String phone;
    private UserRole userRole;
    private String additionalInfo;

    public User(String name, String surname, String email, String password, String phone, UserRole userRole, String additionalInfo) {
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.userRole = userRole;
        this.additionalInfo = additionalInfo;
    }

    public User(int id, String name, String surname, String email, String password, String phone, UserRole userRole, String additionalInfo) {
        this.id = id;
        this.name = name;
        this.surname = surname;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.userRole = userRole;
        this.additionalInfo = additionalInfo;
    }

    public User(String name, String surname, String password) {
        this.name = name;
        this.surname = surname;
        this.password = password;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", User.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("name='" + name + "'")
                .add("surname='" + surname + "'")
                .add("email='" + email + "'")
                .add("password='" + password + "'")
                .add("phone='" + phone + "'")
                .add("userRole=" + userRole)
                .add("additionalInfo='" + additionalInfo + "'")
                .toString();
    }

    public String getAdditionalInfo() {
        return additionalInfo;
    }

    public void setAdditionalInfo(String additionalInfo) {
        this.additionalInfo = additionalInfo;
    }

    public int getEntityId() {
        return id;
    }

    public void setEntityId(int id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getPhone() {
        return phone;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public UserRole getUserRole() {
        return userRole;
    }

    public void setUserRole(UserRole userRole) {
        this.userRole = userRole;
    }
}
