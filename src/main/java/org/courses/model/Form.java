package org.courses.model;

public class Form extends Entity  {

    private User user;
    private Reservation reservation;
    private String additionalInfo;

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

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Reservation getReservation() {
        return reservation;
    }

    public void setReservation(Reservation reservation) {
        this.reservation = reservation;
    }
}
