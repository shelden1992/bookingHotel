# bookingHotel
Final project of education in Epam.

- Система Заказ гостиницы. Клиент заполняет Заявку, указывая количество мест в номере, класс апартаментов и время пребывания. 
Администратор просматривает поступившую Заявку, выделяет наиболее подходящий из доступных Номеров, 
после чего система выставляет Счет Клиенту.

1. DB - MySql
2. Java version up 11.
3. Maven

How to install:

1. Clone project
2. Run create_schema.sql from /resources/scripts
3. Run populate_schema.sql from /resources/scripts
4. Run in terminal command a. mvn clean tomcat7:run (./TOMCAT/bin ./startup.sh && tail -f ../logs/catalina.out)
5. Go to link http://localhost:8080/booking-hotel/

Business logic:
- ----------USER-------------
1. Show register form - RegisterFormCommand (GET);
2. Could register on site. - RegisterCommand (POST);
3. Show login form - LoginFormCommand(GET);
4. Could login. - LoginCommand (POST);
5. Show form for bookin - BookingFormCommand (GET);
6. Couild booking - BookingCommand(POST);
7. Could change language - LanguageCommand
8. Could logout
- ----------ADMIN--------------
9.  Could go to admin page - AdminCommand (GET);
10. Show see all user form - UserFormCommand (GET);
11. Show particular user booking form - UserFormCommand (GET); 
12. Process by booking form - ProccesUserFormCommand;
13. Send client bill - BillBookingCommand;
- ---------FUTURE--------------
14. Add and delete user 
15. Add and delete room
16. Show user his booking form with status and othe
17. Send email to user 
18. Payment system
