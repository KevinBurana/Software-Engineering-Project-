/*
	R. Tyrone Moore
	CS 458 - Fall 2019
	10/14/2019
*/


	-- User table contains all user info
	drop table Users cascade constraints;

	-- UserQAns table contains all the personal responses
	drop table UserQAns cascade constraints;

	-- Question table contains all the intial user questions (qustionare)
	drop table Question cascade constraints;

	--Session table contains info about previous session
	drop table Sessions cascade constraints;

	--Activities table contains info potential activites
	drop table Activity cascade constraints;

	--Trails table contains info on Trails
	drop table Trail cascade constraints;

	--Region table contains info about the general region 
	drop table Region cascade constraints;

	--Wildlife table contains info about animals
	drop table Wildlife cascade constraints;

	--TRegion table contains info about trails in the region 
	drop table TRegion cascade constraints;

	--WRegion table contains info about animals in the region
	drop table WRegion cascade constraints;
	
	--ActQuest table contains info about animals 
	drop table ActQuest cascade constraints;

	--TrailAct table contains info about animals
	drop table TrailAct cascade constraints;

	


	create table Users
	( User_id	char(6) not null,
	  U_phone	        char(12),
	  U_email	        varchar2(30),
	  U_pass	varchar2(30),
	  primary key	(User_id)
	);

	

	create table UserQAns
	( User_qaid		char(6) not null,
	  User_id		char(6) not null,
	  Ans_date		date,
	  Q_id        	char(6),
	  S_id        	char(6),
	  Us_Act_date		char(12),
	  Us_place		varchar2(30),
	  Us_Camp_q		char(1),
	  Us_Hike_q		char(1),
	  Us_Fish_q		char(1),
	  Us_MountB_q 	char(1),
	  Us_Kayak_q	char(1),
	  Us_PaddleB_q	char(1),
	  Us_Surf_q		char(1),
	  Us_Other_q	char(1),
	  Us_Time_out		varchar2(10),
	  Us_Outdoors_lvl  	varchar2(15),
	  Us_Pet_q		char(1),
	  primary key		(User_qaid),
/*
	foreign key		(Q_id) references Question,
	 foreign key		(S_id) references Sessions,
*/
	  foreign key		(User_id) references Users(User_id)
	);

	create table Question
	( Q_id	        char(6) not null,
	  User_qaid	char(6) not null,
	  Act_date	char(12),
	  Place 	varchar2(30),
	  Camp_q	char(1),
	  Hike_q	char(1),
	  Fish_q	char(1),
	  MountB_q 	char(1),
	  Kayak_q	char(1),
	  PaddleB_q	char(1),
	  Surf_q		char(1),
	  Other_q	char(1),
	  Time_out	varchar2(10),
	  Outdoors_lvl  varchar2(15),
	  Pet_q		char(1),
	  primary key	(Q_id),
	  foreign key	(User_qaid) references UserQAns
	);

	create table Sessions
	( S_id			char(6),
	  User_qaid		char(6),
	  S_Act_date		char(12),
	  S_Place		varchar2(30),
	  S_Camp_q	char(1),
	  S_Hike_q	char(1),
	  S_Fish_q	char(1),
	  S_MountB_q 	char(1),
	  S_Kayak_q	char(1),
	  S_PaddleB_q	char(1),
	  S_Surf_q		char(1),
	  S_Other_q	char(1),
	  S_Time_out		varchar2(10),
	  S_Outdoors_lvl  	varchar2(15),
	  S_Pet_q		char(1),
	  primary key		(S_id),
	  foreign key		(User_qaid) references UserQAns
	);

	create table Activity
	( Act_id	char(6),
	  Act_name	varchar2(80),
	  primary key	(Act_id)
	);

	create table Trail
	( Trail_id	char(6),
	  Trail_name	varchar2(80),
	  Trail_dif	varchar2(80),
	  Trail_len	varchar2(80),
	  primary key	(Trail_id)
	);

	create table Region
	( Reg_id	char(6),
	  Reg_name	varchar2(80),
	  primary key	(Reg_id)
	);

	create table Wildlife
	( Wild_id	char(6),
	  Animal_name	varchar2(80),
	  primary key	(Wild_id)
	);

	create table TRegion
	( Trail_id	char(6),
	  Reg_id	char(6),
	  primary key	(Trail_id, Reg_id),
	  foreign key   (Trail_id) references Trail,
	  foreign key	(Reg_id) references Region	
	);

	create table WRegion
	( Wild_id	char(6),
	  Reg_id	char(6),
	  primary key	(Wild_id, Reg_id),
	  foreign key   (Wild_id) references Wildlife,
	  foreign key	(Reg_id)  references Region
	);

	create table ActQuest
	( Q_id	        char(6),
	  Act_id	char(6),
	  primary key	(Q_id, Act_id),
	  foreign key   (Q_id) references Question,
	  foreign key	(Act_id) references Activity
	);

	create table TrailAct
	( Trail_id	char(6),
	  Act_id	char(6),
	  primary key	(Trail_id, Act_id),
	  foreign key   (Trail_id) references Trail,
	  foreign key	(Act_id) references Activity
	);

/*
	alter table UserQAns add foreign key (Q_id) references Question(Q_id);
	alter table UserQAns add foreign key (S_id) references Sessions(S_id);
*/





	
