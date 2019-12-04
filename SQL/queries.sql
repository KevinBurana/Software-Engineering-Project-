/******
* Shaan Bhatt
* Activity Finder
* Last Edited: 10-19-19  
******/
spool queries-results.txt


clear breaks columns computes

ttitle 'CS 458 Get Trailed'
btitle 'HSU Fall 2019'

set space 1
set feedback 6
set pagesize 35
set linesize 120
set heading on

prompt Query: Selects all the Biking activities in a Region
prompt

column Reg_name format A40;
column Act_name format A20;

select Reg_Name, Act_name
from Activity a, TrailAct t, TRegion r, region b
where a.Act_id = t.Act_id
and   t.Trail_id = r.Trail_id
and   b.reg_id = r.reg_id
and   a.Act_id = 000010;

prompt Query: Finds all the activities in a region.
prompt

column Reg_name format A40;
column Act_name format A20;

break on Reg_name skip 1;

select Reg_name, Act_name
from Activity a, TrailAct t, TRegion r, region x
where a.Act_id = t.Act_id
and   t.Trail_id = r.Trail_id
and   r.reg_id = x.reg_id; 

prompt Query: Finds wildlife in a specific trail.
prompt

column Trail_name format A35;
column Animal_name format A15;

break on trail_name skip 1;

select Trail_name, Animal_name
from WildLife w, WRegion r, TRegion t, trail x
where w.Wild_id = r.Wild_id
and   r.reg_id = t.trail_id
and   x.trail_id = t.trail_id
order by trail_name;

break on Reg_name skip 1;

prompt Query: Find all associated trails in a region.
select Reg_name, trail_name
from Trail t, TRegion r, Region x
where t.Trail_id = r.Trail_id
and   r.reg_id = x.reg_id;

clear breaks columns computes

set space 1
set feedback 6
set pagesize 14
set linesize 80
set newpage 1
set heading on

ttitle off
btitle off

spool off





