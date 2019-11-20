CREATE SCHEMA booking_hotel CHARACTER SET utf8 collate utf8_general_ci;
USE booking_hotel;

create table user_role
(
    role_id   int auto_increment not null,
    role_name varchar(255)       not null,
    constraint user_role_pk
        primary key (role_id)
);

create table user
(
    user_id         int auto_increment
        primary key,
    name            varchar(255)                     not null,
    surname         varchar(255)                     not null,
    email           varchar(255)                     null,
    password        varchar(255)                     not null,
    phone           varchar(20)                      not null,
    user_role       ENUM ('ADMIN', 'USER') default 2 not null,
    additional_info text                             null
);

create index user_user_role_role_id_fk
    on user (user_role);



create table room_type
(
    type_id int auto_increment
        primary key,
    type    varchar(255) not null
);
create table room
(
    room_numb   int                                                         not null
        primary key,
    is_reserved tinyint default 0                                           not null,
    place       int     default 2                                           null,
    price       double                                                      not null,
    type        enum ('RELAX', 'BUSINESS', 'FAMILY REST', 'LUX', 'COMFORT') not null
);

create table photo_room
(
    id_photo   int auto_increment,
    room_numb  int          null,
    photo_link varchar(255) not null,
    constraint photo_room_pk
        primary key (id_photo),
    constraint photo_room_room_room_numb_fk
        foreign key (room_numb) references room (room_numb)
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
    form_id         int auto_increment
        primary key,
    user_id         int  not null,
    reservation_id  int  not null,
    additional_info text null,
    constraint form_user_reservation_id_fk
        foreign key (reservation_id) references reservation (reservation_id),
    constraint form_user_user_id_fk
        foreign key (user_id) references user (user_id)
);

# create table user_assessment_room
# (
#     user_id    int    not null,
#     room_numb  int    not null,
#     assessment double null,
#     primary key (user_id, room_numb),
#     constraint user_assessment_room_pk
#         unique (room_numb),
#     constraint user_assessment_room_room_room_numb_fk
#         foreign key (room_numb) references room (room_numb),
#     constraint user_assessment_room_user_user_id_fk
#         foreign key (user_id) references user (user_id)
# );

