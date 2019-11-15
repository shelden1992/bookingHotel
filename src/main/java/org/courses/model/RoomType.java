package org.courses.model;

public enum RoomType {
    LUX(2), BUSINESS(3), RELAX(4), DOUBLE_LUX(5), COMFORT(1);
    private int id;

    RoomType(int id) {
        this.id = id;

    }

    public int getId() {
        return id;
    }
}
