INSERT INTO bookingHotel.user_role(role_name)
VALUES ('ADMIN'),
       ('USER');

INSERT INTO `bookingHotel`.`room` (`room_numb`,  `is_reserved`, `places`, `price`, user_assessment)
VALUES (1,  1, 2, 1000, 5);
INSERT INTO `bookingHotel`.`room` (`room_numb`,  `is_reserved`, `places`, `price`, user_assessment)
VALUES (2,  1, 2, 800, 4);
INSERT INTO `bookingHotel`.`user` (`user_id`, `name`, `surname`, `email`, `password`, `phone`, `user_role`)
VALUES (1, 'Denys', 'Shelupets', 'shelupets1992@gmail.com', '13e2efwef323rdfewfrs', '380502087569', 1);
INSERT INTO `bookingHotel`.`user` (`user_id`, `name`, `surname`, `email`, `password`, `phone`, `user_role`)
VALUES (2, 'Mary', 'Davis', 'davisM@gmail.com', 'weqw1212ewefg43g6ukv', '380667676852', 2);
