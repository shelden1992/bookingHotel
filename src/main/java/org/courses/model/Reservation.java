package org.courses.model;

import java.sql.Date;
import java.util.StringJoiner;

public class Reservation extends Entity  {
    private Room room;
    private Date startReservation;
    private Date finishReservation;


    public Reservation(Date startReservation, Date finishReservation) {
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public Reservation(Room room, Date startReservation, Date finishReservation) {
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

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

    @Override
    public String toString() {
        return new StringJoiner(", ", Reservation.class.getSimpleName() + "[", "]")
                .add("room=" + room)
                .add("startReservation=" + startReservation)
                .add("finishReservation=" + finishReservation)
                .add("id=" + id)
                .toString();
    }

    public void setFinishReservation(Date finishReservation) {
        this.finishReservation = finishReservation;
    }
}
