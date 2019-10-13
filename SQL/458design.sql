/*
	R. Tyrone Moore
	CS 458 - Fall 2019
	10/11/2019
*/


	-- User table contains all user info
	drop table User cascade constraints;

	-- UserQAns table contains all the personal responses
	drop table UserQAns cascade constraints;

	-- Question table contains all the intial user questions (qustionare)
	drop table Question cascade constraints;

	--Activities table contains info potential activites
	drop table Activities cascade constraints;

	--Trails table contains info on Trails
	drop table Trail cascade constraints;

	--Region table contains info about the general region 
	drop table Region cascade constraints;

	--Wildlife table contains info about animals
	drop table Wildlife cascade constraints;

	--TRegion table contains info about trails in the region 
	drop table TInRegion cascade constraints;

	--WRegion table contains info about animals in the region
	drop table WInRegion cascade constaints;
	
	--ActQuest table contains info about animals 
	drop table ActQuest cascade constraints;

	--TrailAct table contains info about animals
	drop table TrailAct cascade constaints;

	--Session table contains info about previous session
	drop table Session cascade constaints;


	create table User
	( User_id	char(6),
	  phone	        char(12),
	  email	        varchar2(30),
	  password	varcahr2(30),
	  primary key	(User_id)
	);

	

	create table UserQAns
	( User_qaid		char(6),
	  User_id		char(6),
	  Ans_date		sysdate,
	  Q_id	        	char(6),
	  S_id	        	char(6),
	  Us_Act_date		char(12),
	  Us_Forest_q		char(1),
	  Us_Beach_q		char(1),
	  Us_River_q		char(1),
	  Us_Camp_q		char(1),
	  Us_Hike_q		char(1),
	  Us_Fish_q		char(1),
	  Us_Time_out		varchar2(10),
	  Us_Outdoors_lvl  	varchar2(15),
	  Us_Pet_q		char(1),
	  primary key		(User_qaid),
	  foreign key		(Q_id) references Question,
	  foreign key		(S_id) references Session,
	  foreign key		(User_id) references User
	);

	create table Question
	( Q_id	        char(6),
	  Act_id        char(6),
	  User_qaid	char(6),
	  Act_date	char(12),
	  Forest_q	char(1),
	  Beach_q	char(1),
	  River_q	char(1),
	  Camp_q	char(1),
	  Hike_q	char(1),
	  Fish_q	char(1),
	  Time_out	varchar2(10),
	  Outdoors_lvl  varchar2(15),
	  Pet_q		char(1),
	  primary key	(Q_id),
	  foreign key	(User_qaid) references UserQAns,
	  foreign key	(Act_id) references Activity
	);

	create table Session
	( S_id			char(6),
	  User_qaid		char(6),
	  S_Act_date		char(12),
	  S_Forest_q		char(1),
	  S_Beach_q		char(1),
	  S_River_q		char(1),
	  S_Camp_q		char(1),
	  S_Hike_q		char(1),
	  S_Fish_q		char(1),
	  S_Time_out		varchar2(10),
	  S_Outdoors_lvl  	varchar2(15),
	  S_Pet_q		char(1),
	  primary key		(S_id),
	  foreign key		(User_qaid) references UserQAns
	);

	create table Actvity
	( Act_id	char(6),
	  Trail_id	char(6),
	  Q_id		char(6),
	  Act_name	varchar2(80),
	  primary key	(Act_id),
	  foreign key	(Trail_id) references Trail,
	  foreign key	(Q_id) references Question
	);

	create table Trail
	( Trail_id	char(6),
	  Act_id	char(6),
	  Reg_id	char(6),
	  Trail_name	varchar2(80),
	  primary key	(Trail_id),
	  foreign key	(Act_id) references Activity,
	  foreign key	(Reg_id) references Region
	);

	create table Region
	( Reg_id	char(6),
	  Trail_id	char(6),
	  Wild_id	char(6),
	  Reg_name	varchar2(80),
	  primary key	(Reg_id),
	  foreign key	(Trail_id) references Trail,
	  foreign key	(Wild_id) references Wildlife
	);

	create table Wildlife
	( Wild_id	char(6),
	  Reg_id	char(6),
	  Animal_name	varchar2(80),
	  primary key	(Wild_id),
	  foreign key	(Reg_id) references Region
	);

	create table TRegion
	( Trail_id	char(6),
	  Reg_id	char(6),
	  foreign key   (Trail_id) references Trail,
	  foreign key	(Reg_id) references Region	
	);

	create table WRegion
	( Wild_id	char(6),
	  Reg_id	char(6),
	  foreign key   (Wild_id) references Wildlife,
	  foreign key	(Reg_id)  references Region
	);

	create table ActQuest
	( Q_id	        char(6),
	  Act_id	char(6),
	  foreign key   (Q_id) references Question,
	  foreign key	(Act_id) references Activity
	);

	create table TrailAct
	( Trail_id	char(6),
	  Act_id	char(6),
	  foreign key   (Trail_id) references Trail,
	  foreign key	(Act_id) references Activity
	);








	
