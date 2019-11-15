package org.courses.model;

import java.util.StringJoiner;

public class Room {
    private int roomNumb;
    private boolean reserved;
    private int place;
    private double price;
    private RoomType roomType;

    public Room(int roomNumb, boolean reserved, int place, double price, RoomType roomType) {
        this.roomNumb = roomNumb;
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
                .add("roomNumb=" + roomNumb)
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

    public int getRoomNumb() {
        return roomNumb;
    }

    public void setRoomNumb(int roomNumb) {
        this.roomNumb = roomNumb;
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
