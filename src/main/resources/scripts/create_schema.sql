CREATE SCHEMA bookingHotel CHARACTER SET utf8 collate utf8_general_ci;
USE bookingHotel;

create table Users_role
(
    role_id   int auto_increment not null,
    role_name varchar(255)       not null,
    constraint Users_role_pk
        primary key (role_id)
);
create table Users_rights
(
    rights_id    int auto_increment,
    rights_title varchar(255) not null,
    constraint Users_rights
        primary key (rights_id)
);
create table Users
(
    users_id     int auto_increment
        primary key,
    name         varchar(255)  not null,
    surname      varchar(255)  not null,
    email        varchar(255)  null,
    phone        varchar(20)   not null,
    password     varchar(255)  not null,
    users_role   int default 2 not null,
    users_rights int default 1 not null,
    constraint Users_Users_rights_rights_id_fk
        foreign key (users_rights) references Users_rights (rights_id),
    constraint Users_Users_role_role_id_fk
        foreign key (users_role) references Users_role (role_id)
);
create table Rooms
(
    room_numb   int               not null,
    room_type   int     default 5 not null,
    from_date   datetime          not null,
    to_Date     datetime          not null,
    is_reserved tinyint default 0 not null,
    places      int     default 2 not null,
    price       double            not null,
    constraint Rooms_pk
        primary key (Room_numb)
);
create table Form
(
    form_id   int auto_increment,
    user      int      not null,
    room      int      not null,
    from_date datetime not null,
    to_date   datetime not null,

    constraint Form_Rooms_room_numb_fk
        foreign key (room) references Rooms (room_numb),
    constraint Form_Users_users_id_fk
        foreign key (user) references Users (users_id),
    constraint Form_pk primary key (form_id)
);
