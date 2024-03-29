/******
* Shaan Bhatt
* Activity Finder
* Last Edited: 10-19-19  
******/

--Query: Find all associated trails in a region.
select trail_name
from trail t, region r
where t.reg_id = r.reg_id;

--Query: Finds wildlife in a specific trail.
select Animal_name
from WildLife w, Region r, Trail t
where w.reg_id = r.reg_id
and   r.trail_id = t.trail_id;

--Query: Finds all the activities in a region.

select Act_name
from Activity a, Trail t, Region r
where a.Trail_id = t.Trail_id
and   t.Reg_id = r.Reg_id;

--Query: Selects all the Biking activities in a Region

select Act_Id
from Activity a, Trail t, Region r
where a.Trail_id = t.Trail_id
and   t.Reg_id = r.Reg_id
and   Act_id = 000010;

--Query: Selects all the regions that contain a certain type of activity.

select reg_name
from Region r, Activity a, Trail t
where r.Trail_ID = t.Trail_ID
and   a.reg_ID = r.reg_id;

--Query: Selects all the questions that have been answered by a user.
select * 
from userQAns;




