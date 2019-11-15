INSERT INTO bookingHotel.user_role(role_name)
VALUES ('ADMIN'),
       ('USER');
INSERT INTO `bookingHotel`.room (`roomNumb`, `room_type`, `from_date`, `to_date`, `is_reserved`, `places`, `price`)
VALUES (1, 5, '2019-11-04 09:39:00', '2019-11-10 09:39:07', 1, 2, 1000);
INSERT INTO `bookingHotel`.room (`roomNumb`, `room_type`, `from_date`, `to_date`, `is_reserved`, `places`, `price`)
VALUES (2, 4, '2019-11-08 09:39:55', '2019-11-10 09:40:01', 1, 2, 800);
INSERT INTO `bookingHotel`.room (`roomNumb`, `room_type`, `from_date`, `to_date`, `is_reserved`, `places`, `price`)
VALUES (3, 3, '2019-11-05 09:41:04', '2019-11-06 09:41:14', 1, 2, 600);
INSERT INTO `bookingHotel`.`user` (`user_id`, `name`, `surname`, `email`, `password`, `phone`, `user_role`)
VALUES (1, 'Denys', 'Shelupets', 'shelupets1992@gmail.com', '13e2efwef323rdfewfrs', '380502087569', 1);
INSERT INTO `bookingHotel`.`user` (`user_id`, `name`, `surname`, `email`, `password`, `phone`, `user_role`)
VALUES (2, 'Mary', 'Davis', 'davisM@gmail.com', 'weqw1212ewefg43g6ukv', '380667676852', 2);
