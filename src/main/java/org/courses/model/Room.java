package org.courses.model;

import java.util.StringJoiner;

public class Room {
    private int room_numb;
    private boolean reserved;
    private int place;
    private double price;
    private double userAssessment;

    public Room(int room_numb, boolean reserved, int place, double price, double userAssessment) {
        this.room_numb = room_numb;
        this.reserved = reserved;
        this.place = place;
        this.price = price;
        this.userAssessment = userAssessment;
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
                .add("room_numb=" + room_numb)
                .add("reserved=" + reserved)
                .add("place=" + place)
                .add("userAssessment=" + userAssessment)
                .toString();
    }

    public int getRoom_numb() {
        return room_numb;
    }

    public void setRoom_numb(int room_numb) {
        this.room_numb = room_numb;
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

    public double getUserAssessment() {
        return userAssessment;
    }

    public void setUserAssessment(double userAssessment) {
        this.userAssessment = userAssessment;
    }
}
