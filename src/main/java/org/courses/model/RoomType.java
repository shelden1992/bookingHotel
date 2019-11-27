package org.courses.model;

public enum RoomType {
    ALL("ALL"), LUX("LUX"), BUSINESS("BUSINESS"), RELAX("RELAX"), FAMILY_REST("FAMILY REST"), COMFORT("COMFORT");

    private String name;

    RoomType(String name) {
        this.name = name;
    }

    public String getName() {
        return name;
    }
}
