package org.courses.model;

public class Form {
    private int formId;
    private User user;
    private Reservation reservation;

    public Form(int formId, User user, Reservation reservation) {
        this.formId = formId;
        this.user = user;
        this.reservation = reservation;
    }

    public int getFormId() {
        return formId;
    }

    public void setFormId(int formId) {
        this.formId = formId;
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
