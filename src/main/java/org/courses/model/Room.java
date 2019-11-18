package org.courses.model;

import java.util.StringJoiner;

public class Room extends Entity {
    private boolean reserved;
    private int place;
    private double price;
    private RoomType roomType;

    public Room(int id, boolean reserved, int place, double price, RoomType roomType) {
        this.id = id;
        this.reserved = reserved;
        this.place = place;
        this.price = price;
        this.roomType = roomType;
    }

    public double getPrice() {
        return price;
    }

    public void setPrice(double price) {
        this.price = price;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Room.class.getSimpleName() + "[", "]")
                .add("id=" + id)
                .add("reserved=" + reserved)
                .add("place=" + place)
                .add("price=" + price)
                .add("roomType=" + roomType)
                .toString();
    }

    public RoomType getRoomType() {
        return roomType;
    }

    public void setRoomType(RoomType roomType) {
        this.roomType = roomType;
    }

    public int getEntityId() {
        return id;
    }

    public void setEntityId(int id) {
        this.id = id;
    }

    public boolean isReserved() {
        return reserved;
    }

    public void setReserved(boolean reserved) {
        this.reserved = reserved;
    }

    public int getPlace() {
        return place;
    }

    public void setPlace(int places) {
        this.place = places;
    }

}
