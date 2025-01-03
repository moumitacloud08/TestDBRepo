create database if not exists casperstay_db;

use casperstay_db;

select database();

-- drop database if exists casperstay_db;

CREATE TABLE USER (USER_EMAIL VARCHAR(50) PRIMARY KEY NOT NULL, USER_NAME VARCHAR(50), USER_PHONE BIGINT(20), USER_PASSWORD VARCHAR(50));

CREATE TABLE HOTEL(
HOTEL_ID int(11) PRIMARY KEY AUTO_INCREMENT,
HOTEL_NAME varchar(50),
HOTEL_EMAIL varchar(50),
HOTEL_PHONE bigint(20),
HOTEL_ADDRESS varchar(250),
HOTEL_CITY varchar(250),
HOTEL_IMAGE varchar(250),
HOTEL_ROOM_IMAGE varchar(250),
HOTEL_AMENITIES varchar(250),
HOTEL_STARS int(11),
HOTEL_RATINGS_AVG decimal(2,1),
HOTEL_PCOMMENTS TEXT,
HOTEL_NCOMMENTS TEXT,
HOTEL_DESCRIPTION TEXT)
AUTO_INCREMENT=100
COMMENT='Hotel details are stored in this table';

CREATE TABLE HOTEL_ROOM_DETAILS (ROOM_ID INT(11) PRIMARY KEY, ROOM_TYPE VARCHAR(50), ROOM_PRICE INT(11), HOTEL_ID INT(11),
FOREIGN KEY (HOTEL_ID) REFERENCES HOTEL(HOTEL_ID));


CREATE TABLE BOOKING(
BOOKING_ID INT(11) PRIMARY KEY AUTO_INCREMENT,
BOOKING_ROOM_ID INT(11),
BOOKING_USER_EMAIL VARCHAR(50),
BOOKING_CHECKING date,
BOOKING_CHECKOUT date,
BOOKING_ROOM_PRICE INT(11),
BOOKING_ROOM_RATING INT(11),
BOOKING_ROOM_PCOMMENTS VARCHAR(250),
BOOKING_ROOM_NCOMMENTS VARCHAR(250),
FOREIGN KEY (BOOKING_ROOM_ID) REFERENCES HOTEL_ROOM_DETAILS(ROOM_ID),
FOREIGN KEY (BOOKING_USER_EMAIL) REFERENCES USER(USER_EMAIL))
AUTO_INCREMENT=100
COMMENT='Booking details are stored in this table';

INSERT INTO USER VALUES 
('moumita.ray8@gmail.com','Moumita Ray',7980404931,'abcty78jd');

INSERT INTO HOTEL(
HOTEL_NAME ,
HOTEL_EMAIL ,
HOTEL_PHONE ,
HOTEL_ADDRESS ,
HOTEL_CITY ,
HOTEL_IMAGE ,
HOTEL_ROOM_IMAGE ,
HOTEL_AMENITIES ,
HOTEL_STARS ,
HOTEL_RATINGS_AVG ,
HOTEL_PCOMMENTS ,
HOTEL_NCOMMENTS ,
HOTEL_DESCRIPTION 
)
 VALUES ('Subistha Misti Hotel ','detth5666@gmail.com',8903333234,'funto Road PIN-712535','Sariaghat','','','',4,3.4,'','','');
 
 INSERT INTO HOTEL_ROOM_DETAILS 
 VALUES (1000,'Double Room AC',10000,100);


INSERT INTO BOOKING
(
BOOKING_ROOM_ID ,
BOOKING_USER_EMAIL ,
BOOKING_CHECKING ,
BOOKING_CHECKOUT ,
BOOKING_ROOM_PRICE ,
BOOKING_ROOM_RATING ,
BOOKING_ROOM_PCOMMENTS ,
BOOKING_ROOM_NCOMMENTS )
VALUES(1020,'moumita.ray8@gmail.com','2023-08-09','2023-08-11',500,3.5,'','');

 
DROP TABLE HOTEL;
DROP TABLE HOTEL_ROOM_DETAILS;
DROP TABLE BOOKING;

desc casperstay_db.hotel;
desc casperstay_db.HOTEL_ROOM_DETAILS;
desc casperstay_db.BOOKING;




