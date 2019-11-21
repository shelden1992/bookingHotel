package org.courses.model;

import java.util.StringJoiner;

public class Photo extends Entity {
    private String photoLink;
    private int roomId;

    public Photo(int id, int roomId, String photoLink) {
        this.id = id;
        this.photoLink = photoLink;
        this.roomId = roomId;
    }

    public String getPhotoLink() {
        return photoLink;
    }

    public void setPhotoLink(String photoLink) {
        this.photoLink = photoLink;
    }

    @Override
    public String toString() {
        return new StringJoiner(", ", Photo.class.getSimpleName() + "[", "]")
                .add("photoLink='" + photoLink + "'")
                .add("roomId=" + roomId)
                .add("id=" + id)
                .toString();
    }

    public int getRoomId() {
        return roomId;
    }

    public void setRoomId(int roomId) {
        this.roomId = roomId;
    }

    @Override
    public int getEntityId() {
        return id;
    }

    @Override
    public void setEntityId(int id) {
        this.id = id;
    }
}
