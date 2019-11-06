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
    phone     varchar(20)   not null,
    password  varchar(255)  not null,
    user_role int default 2 not null,

    constraint user_user_role_role_id_fk
        foreign key (user_role) references user_role (role_id)
);
create table room
(
    room_numb   int               not null,
    room_type   int     default 5 not null,
    from_date   datetime          not null,
    to_date     datetime          not null,
    is_reserved tinyint default 0 not null,
    places      int     default 2 not null,
    price       double            not null,
    constraint rooms_pk
        primary key (room_numb)
);
create table form
(
    form_id   int auto_increment,
    user      int      not null,
    room      int      not null,
    from_date datetime not null,
    to_date   datetime not null,

    constraint form_rooms_room_numb_fk
        foreign key (room) references room (room_numb),
    constraint form_user_user_id_fk
        foreign key (user) references user (user_id),
    constraint form_pk primary key (form_id)
);
