INSERT INTO `booking_hotel`.`room` (`room_numb`, `is_reserved`, `place`, `price`, type)
VALUES (1, 1, 2, 1000, 'BUSINESS');
INSERT INTO `booking_hotel`.`room` (`room_numb`, `is_reserved`, `place`, `price`, type)
VALUES (2, 1, 2, 800, 'RELAX');
INSERT INTO `booking_hotel`.`user` (`user_id`, `name`, `surname`, `email`, `password`, `phone`, `user_role`)
VALUES (1, 'Denys', 'Shelupets', 'shelupets1992@gmail.com', '13e2efwef323rdfewfrs', '380502087569', 'ADMIN');
INSERT INTO `booking_hotel`.`user` (`user_id`, `name`, `surname`, `email`, `password`, `phone`, `user_role`)
VALUES (2, 'Mary', 'Davis', 'davisM@gmail.com', 'weqw1212ewefg43g6ukv', '380667676852', 'USER');
INSERT INTO `booking_hotel`.`reservation` (`reservation_id`, `room_numb`, `start_reservation`, `finish_reservation`)
VALUES (1, 1, '2019-11-16 13:04:08', '2019-11-17 13:04:11');
INSERT INTO `booking_hotel`.`form` (`form_id`, `user_id`, `reservation_id`, `additional_info`)
VALUES (1, 1, 1, '')

