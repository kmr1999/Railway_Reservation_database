CREATE TABLE User_details
(
	user_id VARCHAR2(15) NOT NULL,
	first_name VARCHAR2(15) NOT NULL,
	last_name VARCHAR2(15) NOT NULL,
	gender CHAR NOT NULL,
	date_of_birth DATE NOT NULL,
	mobile_no NUMBER(10) NOT NULL UNIQUE,
	email VARCHAR2(20) NOT NULL UNIQUE,
	city VARCHAR2(20) NOT NULL,
	state VARCHAR2(20) NOT NULL,
	pincode NUMBER(6) NOT NULL,
	password VARCHAR2(15) NOT NULL,
	security_ques VARCHAR2(30) NOT NULL,
	security_ans VARCHAR2(30) NOT NULL,
	CONSTRAINT pku PRIMARY KEY (user_id)
);
select * from train;
drop table train;
drop table train_route;
drop table user_details;
drop table station;
CREATE TABLE Train
(
	train_no NUMBER(5) NOT NULL,
	train_name VARCHAR2(20) NOT NULL,
	CONSTRAINT pkt PRIMARY KEY (train_no)
);
select * from train;

CREATE TABLE Station
(
	station_id NUMBER NOT NULL,
	station_name VARCHAR2(20) NOT NULL,
	CONSTRAINT pks PRIMARY KEY (station_id)
);


CREATE TABLE Train_route
(
	train_no NUMBER(5) NOT NULL,
	station_id NUMBER NOT NULL,
	train_arrival TIMESTAMP NOT NULL,
	train_depart TIMESTAMP NOT NULL,
	train_day NUMBER NOT NULL,
	route_order NUMBER NOT NULL,
	CONSTRAINT fkrt FOREIGN KEY (train_no) REFERENCES Train(train_no),
	CONSTRAINT fkrs FOREIGN KEY (station_id) REFERENCES Station(station_id),
	CONSTRAINT pkr PRIMARY KEY (train_no,station_id)
);
INSERT INTO Train (train_no,train_name) VALUES (11019,'Konark Express');
INSERT INTO Train (train_no,train_name) VALUES (11020,'Konark Express');
INSERT INTO Train (train_no,train_name) VALUES (12703,'Faluknuma Express');
INSERT INTO Train (train_no,train_name) VALUES (12704,'Faluknuma Express');
INSERT INTO Train (train_no,train_name) VALUES (12759,'Charminar Express');
INSERT INTO Train (train_no,train_name) VALUES (12760,'Charminar Express');

INSERT INTO Station (station_id,station_name) VALUES (1 ,'Mumbai');
INSERT INTO Station (station_id,station_name) VALUES (2 ,'Dadar');
INSERT INTO Station (station_id,station_name) VALUES (3 ,'Kalyan Junction');
INSERT INTO Station (station_id,station_name) VALUES (4 ,'Karjat');
INSERT INTO Station (station_id,station_name) VALUES (5 ,'Lonavala');
INSERT INTO Station (station_id,station_name) VALUES (6 ,'Pune Junction');
INSERT INTO Station (station_id,station_name) VALUES (7 ,'Daund Junction');
INSERT INTO Station (station_id,station_name) VALUES (8 ,'Solapur Junction');
INSERT INTO Station (station_id,station_name) VALUES (9 ,'Gulbarga');
INSERT INTO Station (station_id,station_name) VALUES (10 ,'Wadi');
INSERT INTO Station (station_id,station_name) VALUES (11 ,'Seram');
INSERT INTO Station (station_id,station_name) VALUES (12 ,'Tandur');
INSERT INTO Station (station_id,station_name) VALUES (13 ,'Begampet');
INSERT INTO Station (station_id,station_name) VALUES (14 ,'Secunderabad');
INSERT INTO Station (station_id,station_name) VALUES (15 ,'Kazipet Junction');
INSERT INTO Station (station_id,station_name) VALUES (16 ,'Warangal');
INSERT INTO Station (station_id,station_name) VALUES (17 ,'Mahbubabad');
INSERT INTO Station (station_id,station_name) VALUES (18 ,'Khammam');
INSERT INTO Station (station_id,station_name) VALUES (19 ,'Madhira');
INSERT INTO Station (station_id,station_name) VALUES (20 ,'Vijayawada Junction');
INSERT INTO Station (station_id,station_name) VALUES (21 ,'Eluru');
INSERT INTO Station (station_id,station_name) VALUES (22 ,'Tadepalligudem');
INSERT INTO Station (station_id,station_name) VALUES (23 ,'Nidadavolu Junction');
INSERT INTO Station (station_id,station_name) VALUES (24 ,'Rajamundry');
INSERT INTO Station (station_id,station_name) VALUES (25 ,'Samalkot Junction');
INSERT INTO Station (station_id,station_name) VALUES (26 ,'Tuni');
INSERT INTO Station (station_id,station_name) VALUES (27 ,'Anakapalle');
INSERT INTO Station (station_id,station_name) VALUES (28 ,'Vishakapatnam');
INSERT INTO Station (station_id,station_name) VALUES (29 ,'Vizianagram Junction');
INSERT INTO Station (station_id,station_name) VALUES (30 ,'Srikakulam Road');
INSERT INTO Station (station_id,station_name) VALUES (31 ,'Palasa');
INSERT INTO Station (station_id,station_name) VALUES (32 ,'Sompeta');
INSERT INTO Station (station_id,station_name) VALUES (33 ,'Ichchpuram');
INSERT INTO Station (station_id,station_name) VALUES (34 ,'Brahmapur');
INSERT INTO Station (station_id,station_name) VALUES (35 ,'Chatrapur');
INSERT INTO Station (station_id,station_name) VALUES (36 ,'Balugan');
INSERT INTO Station (station_id,station_name) VALUES (37 ,'Khurda Road Junction');
INSERT INTO Station (station_id,station_name) VALUES (38 ,'Bhubaneswar');
INSERT INTO Station (station_id,station_name) VALUES (39 ,'Nalgonda');
INSERT INTO Station (station_id,station_name) VALUES (40 ,'Miryalaguda');
INSERT INTO Station (station_id,station_name) VALUES (41 ,'Piduguralla');
INSERT INTO Station (station_id,station_name) VALUES (42 ,'Guntur Junction');
INSERT INTO Station (station_id,station_name) VALUES (43 ,'Cuttack');
INSERT INTO Station (station_id,station_name) VALUES (44 ,'Jajpur K Road');
INSERT INTO Station (station_id,station_name) VALUES (45 ,'Bhadrakh');
INSERT INTO Station (station_id,station_name) VALUES (46 ,'Balasore');
INSERT INTO Station (station_id,station_name) VALUES (47 ,'Kharagpur Junction');
INSERT INTO Station (station_id,station_name) VALUES (48 ,'Santragachi Junction');
INSERT INTO Station (station_id,station_name) VALUES (49 ,'Howrah Junction');
INSERT INTO Station (station_id,station_name) VALUES (50 ,'Tenali Junction');
INSERT INTO Station (station_id,station_name) VALUES (51 ,'Chirala');
INSERT INTO Station (station_id,station_name) VALUES (52 ,'Ongole');
INSERT INTO Station (station_id,station_name) VALUES (53 ,'Kavali');
INSERT INTO Station (station_id,station_name) VALUES (54 ,'Nellore');
INSERT INTO Station (station_id,station_name) VALUES (55 ,'Gudur Junction');
INSERT INTO Station (station_id,station_name) VALUES (56 ,'Nayadupeta');
INSERT INTO Station (station_id,station_name) VALUES (57 ,'Sullurupeta');
INSERT INTO Station (station_id,station_name) VALUES (58 ,'Chennai Central');



INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,1,TO_DATE('2000/01/01 15:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:10:00','YYYY/MM/DD HH24:MI:SS'),1,1);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,2,TO_DATE('2000/01/01 15:23:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:25:00','YYYY/MM/DD HH24:MI:SS'),1,2);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,3,TO_DATE('2000/01/01 16:06:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:08:00','YYYY/MM/DD HH24:MI:SS'),1,3);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,4,TO_DATE('2000/01/01 16:48:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:50:00','YYYY/MM/DD HH24:MI:SS'),1,4);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,5,TO_DATE('2000/01/01 17:38:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 17:40:00','YYYY/MM/DD HH24:MI:SS'),1,5);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,6,TO_DATE('2000/01/01 19:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 19:05:00','YYYY/MM/DD HH24:MI:SS'),1,6);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,7,TO_DATE('2000/01/01 20:35:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 20:40:00','YYYY/MM/DD HH24:MI:SS'),1,7);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,8,TO_DATE('2000/01/01 00:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:25:00','YYYY/MM/DD HH24:MI:SS'),2,8);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,9,TO_DATE('2000/01/01 02:31:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 02:33:00','YYYY/MM/DD HH24:MI:SS'),2,9);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,10,TO_DATE('2000/01/01 03:55:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:00:00','YYYY/MM/DD HH24:MI:SS'),2,10);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,11,TO_DATE('2000/01/01 04:24:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:25:00','YYYY/MM/DD HH24:MI:SS'),2,11);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,12,TO_DATE('2000/01/01 04:48:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:50:00','YYYY/MM/DD HH24:MI:SS'),2,12);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,13,TO_DATE('2000/01/01 07:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 07:02:00','YYYY/MM/DD HH24:MI:SS'),2,13);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,14,TO_DATE('2000/01/01 07:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 08:00:00','YYYY/MM/DD HH24:MI:SS'),2,14);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,15,TO_DATE('2000/01/01 10:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 10:20:00','YYYY/MM/DD HH24:MI:SS'),2,15);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,16,TO_DATE('2000/01/01 10:28:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 10:30:00','YYYY/MM/DD HH24:MI:SS'),2,16);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,17,TO_DATE('2000/01/01 11:26:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 11:28:00','YYYY/MM/DD HH24:MI:SS'),2,17);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,18,TO_DATE('2000/01/01 11:55:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 11:57:00','YYYY/MM/DD HH24:MI:SS'),2,18);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,19,TO_DATE('2000/01/01 12:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 12:22:00','YYYY/MM/DD HH24:MI:SS'),2,19);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,20,TO_DATE('2000/01/01 14:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 14:20:00','YYYY/MM/DD HH24:MI:SS'),2,20);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,21,TO_DATE('2000/01/01 15:07:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:09:00','YYYY/MM/DD HH24:MI:SS'),2,21);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,22,TO_DATE('2000/01/01 15:38:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:40:00','YYYY/MM/DD HH24:MI:SS'),2,22);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,23,TO_DATE('2000/01/01 15:58:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:00:00','YYYY/MM/DD HH24:MI:SS'),2,23);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,24,TO_DATE('2000/01/01 16:39:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:41:00','YYYY/MM/DD HH24:MI:SS'),2,24);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,25,TO_DATE('2000/01/01 17:18:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 17:20:00','YYYY/MM/DD HH24:MI:SS'),2,25);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,26,TO_DATE('2000/01/01 17:57:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 17:59:00','YYYY/MM/DD HH24:MI:SS'),2,26);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,27,TO_DATE('2000/01/01 18:48:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:50:00','YYYY/MM/DD HH24:MI:SS'),2,27);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,28,TO_DATE('2000/01/01 21:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:20:00','YYYY/MM/DD HH24:MI:SS'),2,28);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,29,TO_DATE('2000/01/01 22:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 22:20:00','YYYY/MM/DD HH24:MI:SS'),2,29);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,30,TO_DATE('2000/01/01 23:13:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 23:15:00','YYYY/MM/DD HH24:MI:SS'),2,30);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,31,TO_DATE('2000/01/01 00:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:22:00','YYYY/MM/DD HH24:MI:SS'),3,31);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,32,TO_DATE('2000/01/01 00:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:47:00','YYYY/MM/DD HH24:MI:SS'),3,32);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,33,TO_DATE('2000/01/01 01:02:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:04:00','YYYY/MM/DD HH24:MI:SS'),3,33);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,34,TO_DATE('2000/01/01 01:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:30:00','YYYY/MM/DD HH24:MI:SS'),3,34);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,35,TO_DATE('2000/01/01 01:48:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:50:00','YYYY/MM/DD HH24:MI:SS'),3,35);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,36,TO_DATE('2000/01/01 02:33:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 02:35:00','YYYY/MM/DD HH24:MI:SS'),3,36);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,37,TO_DATE('2000/01/01 03:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:55:00','YYYY/MM/DD HH24:MI:SS'),3,37);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11019,38,TO_DATE('2000/01/01 04:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:40:00','YYYY/MM/DD HH24:MI:SS'),3,38);

INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,38,TO_DATE('2000/01/01 15:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:25:00','YYYY/MM/DD HH24:MI:SS'),1,1);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,37,TO_DATE('2000/01/01 15:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:55:00','YYYY/MM/DD HH24:MI:SS'),1,2);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,36,TO_DATE('2000/01/01 16:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:47:00','YYYY/MM/DD HH24:MI:SS'),1,3);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,35,TO_DATE('2000/01/01 17:26:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 17:28:00','YYYY/MM/DD HH24:MI:SS'),1,4);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,34,TO_DATE('2000/01/01 17:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 17:55:00','YYYY/MM/DD HH24:MI:SS'),1,5);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,33,TO_DATE('2000/01/01 18:16:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:18:00','YYYY/MM/DD HH24:MI:SS'),1,6);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,32,TO_DATE('2000/01/01 18:31:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:33:00','YYYY/MM/DD HH24:MI:SS'),1,7);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,31,TO_DATE('2000/01/01 19:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 19:17:00','YYYY/MM/DD HH24:MI:SS'),1,8);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,30,TO_DATE('2000/01/01 20:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 20:12:00','YYYY/MM/DD HH24:MI:SS'),1,9);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,29,TO_DATE('2000/01/01 21:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:15:00','YYYY/MM/DD HH24:MI:SS'),1,10);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,28,TO_DATE('2000/01/01 22:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 22:45:00','YYYY/MM/DD HH24:MI:SS'),1,11);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,27,TO_DATE('2000/01/01 23:32:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 23:33:00','YYYY/MM/DD HH24:MI:SS'),1,12);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,26,TO_DATE('2000/01/01 00:16:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:17:00','YYYY/MM/DD HH24:MI:SS'),2,13);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,25,TO_DATE('2000/01/01 00:39:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:40:00','YYYY/MM/DD HH24:MI:SS'),2,14);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,24,TO_DATE('2000/01/01 01:48:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:50:00','YYYY/MM/DD HH24:MI:SS'),2,15);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,23,TO_DATE('2000/01/01 02:14:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 02:15:00','YYYY/MM/DD HH24:MI:SS'),2,16);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,22,TO_DATE('2000/01/01 02:32:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 02:33:00','YYYY/MM/DD HH24:MI:SS'),2,17);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,21,TO_DATE('2000/01/01 03:06:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:07:00','YYYY/MM/DD HH24:MI:SS'),2,18);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,20,TO_DATE('2000/01/01 05:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 05:20:00','YYYY/MM/DD HH24:MI:SS'),2,19);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,19,TO_DATE('2000/01/01 06:02:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 06:03:00','YYYY/MM/DD HH24:MI:SS'),2,20);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,18,TO_DATE('2000/01/01 06:33:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 06:35:00','YYYY/MM/DD HH24:MI:SS'),2,21);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,17,TO_DATE('2000/01/01 07:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 07:21:00','YYYY/MM/DD HH24:MI:SS'),2,22);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,16,TO_DATE('2000/01/01 08:08:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 08:10:00','YYYY/MM/DD HH24:MI:SS'),2,23);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,15,TO_DATE('2000/01/01 08:38:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 08:40:00','YYYY/MM/DD HH24:MI:SS'),2,24);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,14,TO_DATE('2000/01/01 11:35:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 11:45:00','YYYY/MM/DD HH24:MI:SS'),2,25);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,13,TO_DATE('2000/01/01 11:55:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 11:57:00','YYYY/MM/DD HH24:MI:SS'),2,26);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,12,TO_DATE('2000/01/01 13:39:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 13:40:00','YYYY/MM/DD HH24:MI:SS'),2,27);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,11,TO_DATE('2000/01/01 14:05:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 14:06:00','YYYY/MM/DD HH24:MI:SS'),2,28);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,10,TO_DATE('2000/01/01 16:05:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:10:00','YYYY/MM/DD HH24:MI:SS'),2,29);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,9,TO_DATE('2000/01/01 16:43:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:45:00','YYYY/MM/DD HH24:MI:SS'),2,30);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,8,TO_DATE('2000/01/01 18:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:55:00','YYYY/MM/DD HH24:MI:SS'),2,31);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,7,TO_DATE('2000/01/01 22:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 22:30:00','YYYY/MM/DD HH24:MI:SS'),2,32);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,6,TO_DATE('2000/01/01 23:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 23:50:00','YYYY/MM/DD HH24:MI:SS'),2,33);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,5,TO_DATE('2000/01/01 00:53:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:55:00','YYYY/MM/DD HH24:MI:SS'),3,34);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,4,TO_DATE('2000/01/01 01:43:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:45:00','YYYY/MM/DD HH24:MI:SS'),3,35);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,3,TO_DATE('2000/01/01 02:39:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 02:40:00','YYYY/MM/DD HH24:MI:SS'),3,36);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,2,TO_DATE('2000/01/01 03:24:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:25:00','YYYY/MM/DD HH24:MI:SS'),3,37);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (11020,1,TO_DATE('2000/01/01 03:55:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:00:00','YYYY/MM/DD HH24:MI:SS'),3,38);

INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,49,TO_DATE('2000/01/01 07:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 07:25:00','YYYY/MM/DD HH24:MI:SS'),1,1);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,48,TO_DATE('2000/01/01 08:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 08:12:00','YYYY/MM/DD HH24:MI:SS'),1,2);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,47,TO_DATE('2000/01/01 09:05:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 09:10:00','YYYY/MM/DD HH24:MI:SS'),1,3);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,46,TO_DATE('2000/01/01 10:35:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 10:37:00','YYYY/MM/DD HH24:MI:SS'),1,4);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,45,TO_DATE('2000/01/01 11:35:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 11:37:00','YYYY/MM/DD HH24:MI:SS'),1,5);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,44,TO_DATE('2000/01/01 12:06:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 12:08:00','YYYY/MM/DD HH24:MI:SS'),1,6);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,43,TO_DATE('2000/01/01 13:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 13:15:00','YYYY/MM/DD HH24:MI:SS'),1,7);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,38,TO_DATE('2000/01/01 13:55:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 14:00:00','YYYY/MM/DD HH24:MI:SS'),1,8);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,37,TO_DATE('2000/01/01 14:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 14:40:00','YYYY/MM/DD HH24:MI:SS'),1,9);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,36,TO_DATE('2000/01/01 15:33:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:35:00','YYYY/MM/DD HH24:MI:SS'),1,10);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,34,TO_DATE('2000/01/01 16:35:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:40:00','YYYY/MM/DD HH24:MI:SS'),1,11);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,33,TO_DATE('2000/01/01 17:01:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 17:03:00','YYYY/MM/DD HH24:MI:SS'),1,12);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,31,TO_DATE('2000/01/01 18:03:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:05:00','YYYY/MM/DD HH24:MI:SS'),1,13);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,30,TO_DATE('2000/01/01 19:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 19:02:00','YYYY/MM/DD HH24:MI:SS'),1,14);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,29,TO_DATE('2000/01/01 20:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 20:05:00','YYYY/MM/DD HH24:MI:SS'),1,15);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,28,TO_DATE('2000/01/01 21:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:30:00','YYYY/MM/DD HH24:MI:SS'),1,16);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,25,TO_DATE('2000/01/01 23:54:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 23:56:00','YYYY/MM/DD HH24:MI:SS'),1,17);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,24,TO_DATE('2000/01/01 00:29:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:31:00','YYYY/MM/DD HH24:MI:SS'),2,18);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,22,TO_DATE('2000/01/01 01:08:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:09:00','YYYY/MM/DD HH24:MI:SS'),2,19);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,21,TO_DATE('2000/01/01 01:49:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:50:00','YYYY/MM/DD HH24:MI:SS'),2,20);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,20,TO_DATE('2000/01/01 03:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:35:00','YYYY/MM/DD HH24:MI:SS'),2,21);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,42,TO_DATE('2000/01/01 04:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:25:00','YYYY/MM/DD HH24:MI:SS'),2,22);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,41,TO_DATE('2000/01/01 05:28:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 05:29:00','YYYY/MM/DD HH24:MI:SS'),2,23);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,40,TO_DATE('2000/01/01 06:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 06:26:00','YYYY/MM/DD HH24:MI:SS'),2,24);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,39,TO_DATE('2000/01/01 07:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 07:01:00','YYYY/MM/DD HH24:MI:SS'),2,25);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12703,14,TO_DATE('2000/01/01 09:35:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 09:45:00','YYYY/MM/DD HH24:MI:SS'),2,26);

INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,14,TO_DATE('2000/01/01 15:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:00:00','YYYY/MM/DD HH24:MI:SS'),1,1);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,39,TO_DATE('2000/01/01 17:40:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 17:41:00','YYYY/MM/DD HH24:MI:SS'),1,2);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,40,TO_DATE('2000/01/01 18:05:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:06:00','YYYY/MM/DD HH24:MI:SS'),1,3);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,41,TO_DATE('2000/01/01 19:04:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 19:05:00','YYYY/MM/DD HH24:MI:SS'),1,4);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,42,TO_DATE('2000/01/01 20:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 20:30:00','YYYY/MM/DD HH24:MI:SS'),1,5);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,20,TO_DATE('2000/01/01 21:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:40:00','YYYY/MM/DD HH24:MI:SS'),1,6);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,21,TO_DATE('2000/01/01 22:26:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 22:27:00','YYYY/MM/DD HH24:MI:SS'),1,7);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,22,TO_DATE('2000/01/01 23:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 23:01:00','YYYY/MM/DD HH24:MI:SS'),1,8);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,24,TO_DATE('2000/01/01 00:02:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:03:00','YYYY/MM/DD HH24:MI:SS'),2,9);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,25,TO_DATE('2000/01/01 00:41:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:42:00','YYYY/MM/DD HH24:MI:SS'),2,10);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,28,TO_DATE('2000/01/01 03:30:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:50:00','YYYY/MM/DD HH24:MI:SS'),2,11);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,29,TO_DATE('2000/01/01 04:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:52:00','YYYY/MM/DD HH24:MI:SS'),2,12);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,30,TO_DATE('2000/01/01 05:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 05:47:00','YYYY/MM/DD HH24:MI:SS'),2,13);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,31,TO_DATE('2000/01/01 06:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 06:52:00','YYYY/MM/DD HH24:MI:SS'),2,14);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,33,TO_DATE('2000/01/01 07:27:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 07:29:00','YYYY/MM/DD HH24:MI:SS'),2,15);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,34,TO_DATE('2000/01/01 07:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 07:55:00','YYYY/MM/DD HH24:MI:SS'),2,16);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,36,TO_DATE('2000/01/01 08:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 08:52:00','YYYY/MM/DD HH24:MI:SS'),2,17);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,37,TO_DATE('2000/01/01 10:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 10:25:00','YYYY/MM/DD HH24:MI:SS'),2,18);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,38,TO_DATE('2000/01/01 10:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 10:50:00','YYYY/MM/DD HH24:MI:SS'),2,19);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,43,TO_DATE('2000/01/01 11:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 11:25:00','YYYY/MM/DD HH24:MI:SS'),2,20);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,44,TO_DATE('2000/01/01 12:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 12:17:00','YYYY/MM/DD HH24:MI:SS'),2,21);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,45,TO_DATE('2000/01/01 13:05:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 13:07:00','YYYY/MM/DD HH24:MI:SS'),2,22);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,46,TO_DATE('2000/01/01 13:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 13:52:00','YYYY/MM/DD HH24:MI:SS'),2,23);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,47,TO_DATE('2000/01/01 15:25:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 15:30:00','YYYY/MM/DD HH24:MI:SS'),2,24);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,48,TO_DATE('2000/01/01 16:56:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 16:58:00','YYYY/MM/DD HH24:MI:SS'),2,25);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12704,49,TO_DATE('2000/01/01 17:45:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:00:00','YYYY/MM/DD HH24:MI:SS'),2,26);

INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,58,TO_DATE('2000/01/01 18:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:10:00','YYYY/MM/DD HH24:MI:SS'),1,1);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,57,TO_DATE('2000/01/01 19:19:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 19:20:00','YYYY/MM/DD HH24:MI:SS'),1,2);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,56,TO_DATE('2000/01/01 19:44:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 19:45:00','YYYY/MM/DD HH24:MI:SS'),1,3);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,55,TO_DATE('2000/01/01 20:40:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 20:45:00','YYYY/MM/DD HH24:MI:SS'),1,4);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,54,TO_DATE('2000/01/01 21:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:11:00','YYYY/MM/DD HH24:MI:SS'),1,5);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,53,TO_DATE('2000/01/01 21:48:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:49:00','YYYY/MM/DD HH24:MI:SS'),1,6);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,52,TO_DATE('2000/01/01 22:42:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 22:43:00','YYYY/MM/DD HH24:MI:SS'),1,7);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,51,TO_DATE('2000/01/01 23:18:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 23:19:00','YYYY/MM/DD HH24:MI:SS'),1,8);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,50,TO_DATE('2000/01/01 00:14:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 00:15:00','YYYY/MM/DD HH24:MI:SS'),2,9);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,20,TO_DATE('2000/01/01 01:10:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:20:00','YYYY/MM/DD HH24:MI:SS'),2,10);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,18,TO_DATE('2000/01/01 02:28:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 02:30:00','YYYY/MM/DD HH24:MI:SS'),2,11);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,17,TO_DATE('2000/01/01 03:19:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:20:00','YYYY/MM/DD HH24:MI:SS'),2,12);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,16,TO_DATE('2000/01/01 04:13:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:15:00','YYYY/MM/DD HH24:MI:SS'),2,13);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,15,TO_DATE('2000/01/01 04:40:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:42:00','YYYY/MM/DD HH24:MI:SS'),2,14);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12759,14,TO_DATE('2000/01/01 07:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 07:20:00','YYYY/MM/DD HH24:MI:SS'),2,15);

INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,14,TO_DATE('2000/01/01 18:50:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 18:55:00','YYYY/MM/DD HH24:MI:SS'),1,1);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,15,TO_DATE('2000/01/01 20:53:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 20:55:00','YYYY/MM/DD HH24:MI:SS'),1,2);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,16,TO_DATE('2000/01/01 21:08:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:10:00','YYYY/MM/DD HH24:MI:SS'),1,3);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,17,TO_DATE('2000/01/01 21:53:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 21:54:00','YYYY/MM/DD HH24:MI:SS'),1,4);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,18,TO_DATE('2000/01/01 22:40:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 22:42:00','YYYY/MM/DD HH24:MI:SS'),1,5);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,20,TO_DATE('2000/01/01 01:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:10:00','YYYY/MM/DD HH24:MI:SS'),2,6);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,50,TO_DATE('2000/01/01 01:37:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 01:38:00','YYYY/MM/DD HH24:MI:SS'),2,7);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,51,TO_DATE('2000/01/01 02:20:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 02:21:00','YYYY/MM/DD HH24:MI:SS'),2,8);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,52,TO_DATE('2000/01/01 03:04:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:05:00','YYYY/MM/DD HH24:MI:SS'),2,9);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,53,TO_DATE('2000/01/01 03:49:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 03:50:00','YYYY/MM/DD HH24:MI:SS'),2,10);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,54,TO_DATE('2000/01/01 04:23:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 04:24:00','YYYY/MM/DD HH24:MI:SS'),2,11);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,55,TO_DATE('2000/01/01 05:38:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 05:40:00','YYYY/MM/DD HH24:MI:SS'),2,12);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,56,TO_DATE('2000/01/01 06:00:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 06:05:00','YYYY/MM/DD HH24:MI:SS'),2,13);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,57,TO_DATE('2000/01/01 06:24:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 06:25:00','YYYY/MM/DD HH24:MI:SS'),2,14);
INSERT INTO Train_route (train_no,station_id,train_arrival,train_depart,train_day,route_order)
VALUES (12760,58,TO_DATE('2000/01/01 08:15:00','YYYY/MM/DD HH24:MI:SS'),TO_DATE('2000/01/01 08:25:00','YYYY/MM/DD HH24:MI:SS'),2,15);



set serveroutput on;




DECLARE 
   rord1 number; 
   rord2 number; 
   t_num number;
   coun1 number;
   hou varchar(10);
   sou number;
   des number;
   hou1 varchar(10);
   coun2 number;
   fare number;
   day1 number;
   day2 number;
   CURSOR train_num is 
      SELECT train_no FROM train; 
BEGIN 
 select station_id into sou from station where station_name=&s_station_name;
  select station_id into des from station where station_name=&d_station_name;
  OPEN train_num; 
  LOOP 
   FETCH train_num into t_num; 
   select count(*)  into coun1 from train_route where station_id=sou and train_no=t_num;
    select count(*) into coun2 from train_route where station_id=des and train_no=t_num;
    if(coun1=1 and coun2=1)then
   select route_order,train_day,to_char(extract(hour from train_arrival)) into rord1,day1,hou from train_route where station_id=sou and train_no =t_num;
    select route_order,train_day,to_char(extract(hour from train_arrival)) into rord2,day2,hou1 from train_route where station_id=des and train_no =t_num;
    if(rord2>rord1) then
     fare:=(rord2-rord1)*100;
     day2:=day2-day1+1;
dbms_output.put_line('train number is '||t_num||' fare is '||fare||' starts at '||hou||' hours on day 1 '||' arrives on day '||day2||' at '||hou1||' hours '); 
end if;
end if;
    EXIT WHEN train_num%notfound; 
      
   END LOOP; 
  CLOSE train_num; 
END; 










create table Ticket (
pnr_no NUMBER ,
user_id varchar(15),
train_no NUMBER(5) 
NOT NULL,
start_station NUMBER NOT NULL,
end_station NUMBER NOT NULL,
date_of_booking DATE NOT NULL,
date_of_journey Date,
fare NUMBER 
NOT NULL,
status varchar(2) default 'wl',
seat_no number default -1
);
drop table ticket;
create view as 
select 


CREATE OR REPLACE TRIGGEr ticket_booking
BEFORE INSERT ON ticket
FOR EACH ROW  
DECLARE 
go number:=0;
   coun number;
   boo number:=1;
   seatno number;
   var number;
  a number;
  s_s number;
  r_ov1 number;
   r_ov2 number;
  e_s number;
  f number:=1;
  r_o1 number;
  r_o2 number;
 
 cursor booked_tickets is 
 select start_station,end_station,seat_no from ticket where
 date_of_journey=:new.date_of_journey and train_no=:new.train_no and status='c' order by seat_no;  
BEGIN 
  select route_order into r_o1 from train_route where station_id=:new.start_station and train_no=:new.train_no;
  select route_order into r_o2 from train_route where station_id=:new.end_station and train_no=:new.train_no;
  
   select count(*)into coun from ticket where train_no=:new.train_no and date_of_journey=:new.date_of_journey;
   if(coun=0) then
     :new.seat_no:=1;
   :new.status:='c';
     boo:=0;
   end if;
   if(coun>0) then
      open booked_tickets;
      LOOP 
      
     
   FETCH booked_tickets into s_s,e_s,seatno; 
   dbms_output.put_line(s_s||' '||e_s);
  
   if(var!=seatno and f!=1) then 
   if(boo=1) then
:new.seat_no:=seatno;
:new.status:='c';
go:=1;
exit;

   end if; 
   boo:=1;
   end if;
   
   var:=seatno;
  
   f:=0;   
   select route_order into r_ov1 from train_route where train_no=:new.train_no and station_id=s_s;
   select route_order into r_ov2 from train_route where train_no=:new.train_no and station_id=e_s;
   if(r_o2<r_ov1 or r_o1>r_ov2) then
   if(boo=1) then   
   boo:=1;
   else
   boo:=0;
   end if;   
   else       
        boo:=0;
   end if;     
   dbms_output.put_line(seatno);
   if(booked_tickets%notfound)then
   if(boo=1) then
   :new.seat_no:=seatno;
   :new.status:='c';
   go:=1; 
   dbms_output.put_line(go);
   dbms_output.put_line(:new.seat_no);
   dbms_output.put_line(:new.status);
   end if;
   end if;
EXIT WHEN booked_tickets%notfound; 
   END LOOP; 
   close booked_tickets;
   
   end if;
 if(go!=1) then
FOR a in 1 .. 2 LOOP 
     select count(*) into coun from ticket where seat_no=a;
     if(coun=0) then
     :new.seat_no:=a;
     :new.status:='c';
    exit;
     end if;
  END LOOP;  
   
   end if;
END; 
select * from ticket;
delete from ticket;

       <------------------------------------------------->
insert into ticket(pnr_no,user_id,train_no,start_station,end_station,date_of_booking,date_of_journey,fare)
values(1,'1',11019,3,10,sysdate,'20-04-2021',700);
insert into ticket(pnr_no,user_id,train_no,start_station,end_station,date_of_booking,date_of_journey,fare) 
values(2,'2',11019,12,15,sysdate,'20-04-2021',300);
insert into ticket(pnr_no,user_id,train_no,start_station,end_station,date_of_booking,date_of_journey,fare) 
values(3,'2',11019,16,19,sysdate,'20-04-2021',300);
insert into ticket(pnr_no,user_id,train_no,start_station,end_station,date_of_booking,date_of_journey,fare) 
values(4,'2',11019,5,20,sysdate,'20-04-2021',1500);
insert into ticket(pnr_no,user_id,train_no,start_station,end_station,date_of_booking,date_of_journey,fare) 
values(5,'2',11019,4,21,sysdate,'20-04-2021',1700);
select *  from ticket;



<------------------------------------------------------------->










drop trigger cancel_ticket;
CREATE OR REPLACE TRIGGEr cancel_ticket
after delete ON ticket
FOR EACH ROW 
when (old.status='c')
Declare
 pnr_no number;
 coun number;
cursor cancel_tickets is 
 select pnr_no from ticket where
 date_of_journey=:old.date_of_journey and train_no=:old.train_no and status='wl' order by date_of_booking;  
begin
select count(*) into coun from ticket where
 date_of_journey=:old.date_of_journey and train_no=:old.train_no and status='wl';
 if(coun>0) then 
 
 open cancel_tickets;
  FETCH cancel_tickets into pnr_no; 
  
    rebook(pnr_no,:old.date_of_journey,:old.train_no);
 close cancel_tickets;
 end if;
 end;

delete from ticket;
delete from ticket where pnr_no=1;





CREATE OR REPLACE PROCEDURE rebook 
(pnr IN number,dateofj date,trainno number) 
IS 
go number:=0;
   coun number;
   boo number:=1;
   seatno number;
   var number;
  a number;
  s_s number;
  r_ov1 number;
   r_ov2 number;
  e_s number;
  f number:=1;
  r_o1 number;
  r_o2 number;
 cursor booked_tickets is 
 select start_station,end_station,seat_no from ticket where
 date_of_journey=dateofj and train_no=trainno and status='c' order by seat_no;  

BEGIN 
 select start_station,end_station into s_s,e_s from ticket where pnr_no=pnr; 
  select route_order into r_o1 from train_route where station_id=s_s and train_no=trainno;
  select route_order into r_o2 from train_route where station_id=e_s and train_no=trainno;
 
  select count(*)into coun from ticket where train_no=train_no and date_of_journey=dateofj;
   if(coun=0) then
   update ticket
   set seat_no=1,status='c'
   where pnr_no=pnr;    
     boo:=0;
   end if;
 
 
    if(coun>0) then
      open booked_tickets;
      LOOP 
      
     
   FETCH booked_tickets into s_s,e_s,seatno; 
   dbms_output.put_line(s_s||' '||e_s);
  
   if(var!=seatno and f!=1) then 
   if(boo=1) then

 update ticket
   set seat_no=seatno,status='c'
   where pnr_no=pnr;    
go:=1;
exit;

   end if; 
   boo:=1;
   end if;
   
   var:=seatno;
  
   f:=0;   
   select route_order into r_ov1 from train_route where train_no=trainno and station_id=s_s;
   select route_order into r_ov2 from train_route where train_no=trainno and station_id=e_s;
   if(r_o2<r_ov1 or r_o1>r_ov2) then
   if(boo=1) then   
   boo:=1;
   else
   boo:=0;
   end if;   
   else       
        boo:=0;
   end if;     
   dbms_output.put_line(seatno);
   if(booked_tickets%notfound)then
   if(boo=1) then
   update ticket
   set seat_no=seatno,status='c'
   where pnr_no=pnr;    
   go:=1; 
   dbms_output.put_line(go);
  
   end if;
   end if;
EXIT WHEN booked_tickets%notfound; 
   END LOOP; 
   close booked_tickets;
   
   end if;
 if(go!=1) then
FOR a in 1 .. 30 LOOP 
     select count(*) into coun from ticket where seat_no=a;
     if(coun=0) then
    update ticket
   set seat_no=a,status='c';
    exit;
     end if;
  END LOOP;  
   
   end if;
 
 
END;









