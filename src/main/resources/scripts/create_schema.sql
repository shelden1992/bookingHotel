CREATE SCHEMA bookingHotel CHARACTER SET utf8 collate utf8_general_ci;
USE bookingHotel;

create table user_role
(
    role_id   int auto_increment not null,
    role_name varchar(255)       not null,
    constraint user_role_pk
        primary key (role_id)
);

create table user
(
    user_id   int auto_increment
        primary key,
    name      varchar(255)  not null,
    surname   varchar(255)  not null,
    email     varchar(255)  null,
    password  varchar(255)  not null,
    phone     varchar(20)   not null,
    user_role int default 2 not null,

    constraint user_user_role_role_id_fk
        foreign key (user_role) references user_role (role_id)
);

create table room
(
    room_numb       int               not null
        primary key,
    is_reserved     tinyint default 0 not null,
    places          int     default 2 null,
    price           double            not null,
    user_assessment double  default 5 not null
);

create table reservation
(
    reservation_id     int auto_increment
        primary key,
    room_numb          int      not null,
    start_reservation  datetime not null,
    finish_reservation datetime not null,
    constraint reservation_room_numb_fk
        foreign key (room_numb) references room (room_numb)
);


create table form
(
    form_id        int auto_increment
        primary key,
    user           int not null,
    reservation_id int not null,

    constraint form_user_user_id_fk
        foreign key (user) references user (user_id),
    constraint form_user_reservation_id_fk
        foreign key (reservation_id) references reservation (reservation_id)
);
create table user_assessment_room
(
    user_id    int    not null,
    room_numb  int    not null,
    assessment double null,
    primary key (user_id, room_numb),
    constraint user_assessment_room_pk
        unique (room_numb),
    constraint user_assessment_room_room_room_numb_fk
        foreign key (room_numb) references room (room_numb),
    constraint user_assessment_room_user_user_id_fk
        foreign key (user_id) references user (user_id)
);

