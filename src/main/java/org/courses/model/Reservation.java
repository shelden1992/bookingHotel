package org.courses.model;

import java.sql.Date;

public class Reservation {
    private int reservationId;
    private Room room;
    private Date startReservation;
    private Date finishReservation;

    public Reservation(int reservationId, Room room, Date startReservation, Date finishReservation) {
        this.reservationId = reservationId;
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public int getReservationId() {
        return reservationId;
    }

    public void setReservationId(int reservationId) {
        this.reservationId = reservationId;
    }

    public Room getRoom() {
        return room;
    }

    public void setRoom(Room room) {
        this.room = room;
    }

    public Date getStartReservation() {
        return startReservation;
    }

    public void setStartReservation(Date startReservation) {
        this.startReservation = startReservation;
    }

    public Date getFinishReservation() {
        return finishReservation;
    }

    public void setFinishReservation(Date finishReservation) {
        this.finishReservation = finishReservation;
    }
}
