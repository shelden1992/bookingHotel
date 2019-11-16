package org.courses.model;

public enum UserRole {
    ADMIN("ADMIN"), USER("USER");

    private String userRoleName;

    UserRole(String userRole) {
        this.userRoleName = userRole;
    }

    public String getUserRoleName() {
        return userRoleName;
    }
}
