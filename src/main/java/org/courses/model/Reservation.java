package org.courses.model;

import java.sql.Date;

public class Reservation extends Entity  {
    private Room room;
    private Date startReservation;
    private Date finishReservation;

    public Reservation(int id, Room room, Date startReservation, Date finishReservation) {
        this.id = id;
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public int getEntityId() {
        return id;
    }

    public void setEntityId(int reservationId) {
        this.id = reservationId;
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
