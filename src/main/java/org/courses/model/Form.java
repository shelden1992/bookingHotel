package org.courses.model;

import java.util.StringJoiner;

public class Form extends Entity  {

    private User user;
    private Reservation reservation;
    private String additionalInfo;

    public Form(Reservation reservation) {
        this.reservation = reservation;
    }

    public Form(int id, User user, Reservation reservation, String additionalInfo) {
        this.id = id;
        this.user = user;
        this.reservation = reservation;
        this.additionalInfo = additionalInfo;
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

    @Override
    public String toString() {
        return new StringJoiner(", ", Form.class.getSimpleName() + "[", "]")
                .add("user=" + user)
                .add("reservation=" + reservation)
                .add("additionalInfo='" + additionalInfo + "'")
                .add("id=" + id)
                .toString();
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public Form(User user, Reservation reservation) {
        this.user = user;
        this.reservation = reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }

}
