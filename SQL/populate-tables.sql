/* 
	Ashleigh Robie
	CS 458 - Fall 2019
	10/12/2019
*/
-- creating users primary key sequence
drop sequence User_sequence;

create sequence User_sequence
start with 000000
increment by 1;

-- creating UserQAns primary key sequence
drop sequence UserQAns_sequence;

create sequence UserQAns_sequence
start with 000000
increment by 1;

-- creating Question primary key sequence
drop sequence Question_sequence;

create sequence Question_sequence
start with 000000
increment by 1;

-- creating Session primary key sequence
drop sequence Session_sequence;

create sequence Session_sequence
start with 000000
increment by 1;

-- creating Activity primary key sequence
drop sequence Activity_sequence;

create sequence Activity_sequence
start with 000000
increment by 1;

-- creating Trail primary key sequence
drop sequence Trail_sequence;

create sequence Trail_sequence
start with 000000
increment by 1;

--creating Region primary key sequence
drop sequence Region_sequence;

create sequence Region_sequence
start with 000000
increment by 1;

-- creating Wildlife primary key sequence
drop sequence Wildlife_sequence;

create sequence Wildlife_sequence
start with 000000
increment by 1;

--------------------------------------------------------------------------------------
-- populate TRegion and WRegion after Trail, Region, and Wildlife are populated.

-----------------------------
---------TEST DATA-----------
-----------------------------

-- inserting test Users
insert into Users
values
('111111', '7777777777', 'testaccount1@gmail.com', 'password');

insert into Users
values
('111112', '5555555555', 'testaccount2@gmail.com', 'password');

insert into Users
values
('111113', '6666666666', 'testaccount3@gmail.com', 'password');

-- inserting test data into UserQAns
insert into UserQAns
values
(UserQAns_sequence.nextval, '1111111', sysdate, '111111', '111111', sysdate, '1', '0', '0', '1', '1', '0', '1 hour', 'moderate', '0');

insert into UserQAns
values
(UserQAns_sequence.nextval, '1111111', sysdate, '111111', '111111', sysdate, '0', '1', '0', '0', '1', '0', '3 hours', 'experienced', '1');

insert into UserQAns
values
(UserQAns_sequence.nextval, '1111111', sysdate, '111111', '111111', sysdate, '0', '1', '0', '1', '0', '0', '1 hour', 'moderate', '0');

-- inserting test values into Question
insert into Question
values
(UserQAns_sequence.nextval, '1111111', sysdate, '111111', '111111', sysdate, '1', '0', '0', '1', '1', '0', '1 hour', 'moderate', '0');