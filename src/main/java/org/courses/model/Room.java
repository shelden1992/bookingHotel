package org.courses.model;

import java.util.List;
import java.util.StringJoiner;

public class Room extends Entity {
    private int place;
    private double price;
    private RoomType roomType;
    private List<Photo> photoList;

    public Room(int place, RoomType roomType) {
        this.place = place;
        this.roomType = roomType;
    }

    public Room(int id,   int place, double price, RoomType roomType, List<Photo> photoList) {
        this.id = id;
        this.place = place;
        this.price = price;
        this.roomType = roomType;
        this.photoList = photoList;
    }

    public List<Photo> getPhotoList() {
        return photoList;
    }

    public void setPhotoList(List<Photo> photoList) {
        this.photoList = photoList;
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


    public int getPlace() {
        return place;
    }

    public void setPlace(int places) {
        this.place = places;
    }

}
