start 458design.sql;

drop sequence User_sequence;

create sequence User_sequence
start with 000000
increment by 1;

insert into Users
values
('111111', '7777777777', 'testaccount1@gmail.com', 'password');

insert into Users
values
('111112', '5555555555', 'testaccount2@gmail.com', 'password');

insert into Users
values
('111113', '6666666666', 'testaccount3@gmail.com', 'password');

drop sequence UserQAns_sequence;

create sequence UserQAns_sequence
start with 000000
increment by 1;

drop sequence Question_sequence;

create sequence Question_sequence
start with 000000
increment by 1;

drop sequence Activity_sequence;

create sequence Activity_sequence
start with 000000
increment by 1;

drop sequence Trail_sequence;

create sequence Trail_sequence
start with 000000
increment by 1;

drop sequence Region_sequence;

create sequence Region_sequence
start with 000000
increment by 1;

drop sequence Wildlife_sequence;

create sequence Wildlife_sequence
start with 000000
increment by 1;

-- populate TInRegion and WInRegion after Trail, Region, and Wildlife are populated.