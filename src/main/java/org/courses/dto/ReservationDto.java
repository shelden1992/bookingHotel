package org.courses.dto;

import org.courses.model.Entity;
import org.courses.model.Room;
import org.courses.model.RoomType;

import java.sql.Date;

public class ReservationDto extends Entity {

    private Room room;
    private Date startReservation;
    private Date finishReservation;
    private RoomType roomType;
    private int adults;

    private String startReservationBeforeParse;
    private String finishReservationBeforeParse;


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

    public String getStartReservationBeforeParse() {
        return startReservationBeforeParse;
    }

    public void setStartReservationBeforeParse(String startReservationBeforeParse) {
        this.startReservationBeforeParse = startReservationBeforeParse;
    }

    public String getFinishReservationBeforeParse() {
        return finishReservationBeforeParse;
    }

    public void setFinishReservationBeforeParse(String finishReservationBeforeParse) {
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }


    @Override
    public int getEntityId() {
        return id;
    }

    public ReservationDto(RoomType roomType, int adults, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.roomType = roomType;
        this.adults = adults;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }

    public ReservationDto(Date startReservation, Date finishReservation, RoomType roomType, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
        this.roomType = roomType;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }

    public ReservationDto(Room room, RoomType roomType, int adults, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.room = room;
        this.roomType = roomType;
        this.adults = adults;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }

    public ReservationDto(Date startReservation, Date finishReservation) {
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
    }

    public ReservationDto(Room room, Date startReservation, Date finishReservation, RoomType roomType, int adults, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
        this.roomType = roomType;
        this.adults = adults;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }

    @Override
    public void setEntityId(int id) {
        this.id = id;

    }
}

