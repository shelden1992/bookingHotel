package org.courses.dto;

import org.courses.model.Entity;
import org.courses.model.Room;
import org.courses.model.RoomType;

import java.sql.Date;

public class ReservationDto extends Entity {


    private Room room;
    private RoomType roomType;
    private int adults;
    private Date startReservation;
    private Date finishReservation;

    public ReservationDto(RoomType roomType, int adults, Date startReservation, Date finishReservation) {
        this.roomType = roomType;
        this.adults = adults;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }
    public ReservationDto(int adults, Date startReservation, Date finishReservation) {
        this.adults = adults;
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

    public RoomType getRoomType() {
        return roomType;
    }

    public void setRoomType(RoomType roomType) {
        this.roomType = roomType;
    }

    public int getAdults() {
        return adults;
    }

    public void setAdults(int adults) {
        this.adults = adults;
    }
}

