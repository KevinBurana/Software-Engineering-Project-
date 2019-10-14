/******
* Activity Finder
* Last Edited: 10-5-19  
******/

--Query: Find all associated trails in a region.
select trail_name
from trail t, region r
where t.reg_id = r.reg_id;

