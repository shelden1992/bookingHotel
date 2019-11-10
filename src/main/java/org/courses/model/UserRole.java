package org.courses.model;

public enum UserRole {
    ADMIN(1), USER(2);

    private int userRoleId;

    UserRole(int userRoleId) {
        this.userRoleId = userRoleId;
    }

    public int getUserRoleId() {
        return userRoleId;
    }
}
