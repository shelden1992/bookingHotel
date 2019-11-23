package org.courses.dto;

import org.courses.model.Entity;
import org.courses.model.Room;
import org.courses.model.RoomType;

import java.sql.Date;
import java.util.StringJoiner;

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

    public ReservationDto(Room room, RoomType roomType, int adults, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.room = room;
        this.roomType = roomType;
        this.adults = adults;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }

    public ReservationDto(Room room, Date startReservation, Date finishReservation, RoomType roomType, int adults) {
        this.room = room;
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
        this.roomType = roomType;
        this.adults = adults;
    }

    public ReservationDto(Room room, int adults, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.room = room;
        this.adults = adults;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }

    public ReservationDto(RoomType roomType, int adults, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.roomType = roomType;
        this.adults = adults;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
    }

    public ReservationDto(Date startReservation, Date finishReservation, RoomType roomType, int adults, String startReservationBeforeParse, String finishReservationBeforeParse) {
        this.startReservation = startReservation;
        this.finishReservation = finishReservation;
        this.roomType = roomType;
        this.adults = adults;
        this.startReservationBeforeParse = startReservationBeforeParse;
        this.finishReservationBeforeParse = finishReservationBeforeParse;
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

    @Override
    public int getEntityId() {
        return id;
    }

    @Override
    public void setEntityId(int id) {
        this.id = id;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", ReservationDto.class.getSimpleName() + "[", "]")
                .add("room=" + room)
                .add("startReservation=" + startReservation)
                .add("finishReservation=" + finishReservation)
                .add("roomType=" + roomType)
                .add("adults=" + adults)
                .add("startReservationBeforeParse='" + startReservationBeforeParse + "'")
                .add("finishReservationBeforeParse='" + finishReservationBeforeParse + "'")
                .toString();
    }
}

