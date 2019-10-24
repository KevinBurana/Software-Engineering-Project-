/* 
	Ashleigh Robie
	CS 458 - Fall 2019
	10/12/2019
*/

-- creating users primary key sequence
drop sequence Users_sequence;

create sequence Users_sequence
start with 000001
increment by 1;

-- creating UserQAns primary key sequence
drop sequence UserQAns_sequence;

create sequence UserQAns_sequence
start with 000001
increment by 1;

-- creating Question primary key sequence
drop sequence Question_sequence;

create sequence Question_sequence
start with 000001
increment by 1;

-- creating Session primary key sequence
drop sequence Session_sequence;

create sequence Session_sequence
start with 000001
increment by 1;

delete from TrailAct;
delete from ActQuest;
delete from WRegion;
delete from TRegion;
delete from Wildlife;
delete from Region;
delete from Trail;
delete from Activity;
delete from Sessions;
delete from Question;
delete from UserQAns;
delete from Users;

-----------------------------
---------TEST DATA-----------
-----------------------------

-- inserting test Users
insert into Users
values
('000000', '777777777777', 'testaccount1@gmail.com', 'password');

insert into Users
values
('222222', '555555555555', 'testaccount2@gmail.com', 'password');

insert into Users
values
('333333', '666666666666', 'testaccount3@gmail.com', 'password');

insert into UserQAns
values
('123456', '222222', '09-May-2019', '111111', '111111', '123456789012', '0', '0', '0', '0', '0', '0', '1 hour', 'beginner', '0');
-- inserting test data into UserQAns
--insert into UserQAns
--values
--('123456', '000000', '09-Apr-2019', '111111', '111111', '120123420192','1', '0', '0', '1', '1', '0', '1 hour', 'moderate', '0');

-- inserting test values into Question
insert into Question
values
('111111', '123456', '120123420192', '1', '0', '0', '1', '1', '0', '1 hour', 'moderate', '0');
-- inserting test values into Session
insert into Sessions
values
('111111', '123456', '120123420192', '1', '0', '0', '1', '1', '0', '1 hour', 'moderate', '0');

insert into UserQAns
values
('222222', '222222', '09-Apr-2019', '111111', '111111', '120123420192', '0', '1', '0', '0', '1', '0', '3 hours', 'experienced', '1');

insert into UserQAns
values
('333333', '333333', '09-Apr-2019', '111111', '111111', '120123420192', '0', '1', '0', '1', '0', '0', '1 hour', 'moderate', '0');




/*
***BERRY GLEN TRAIL***
Region: Orick, Elk Meadows
Acts: hiking
-moderate to strenuous
-7.2 miles round trip; climb 1270 ft

***COSTAL TRAIL***
Region: Prairie Creek Redwoods State Park
Acts: hiking, camping, Carruthers Cove(only low tide)


***RIM TRAIL***
Region: Patrick's Point State Park
Acts: hiking
-both beach and forest
-Rim trail is 2 miles along the coast

***HAMMOND COASTAL TRAIL***
Region: McKinleyville
Acts: hiking, biking, running, horseback riding
5+ miles total

***LOST COAST TRAIL***
Region: Shelter Cove, King Range National Conservation Area
Acts: hiking, camping
4.4 miles

***PETROLIA***
Region: King Range National Conservation
Acts: hiking/backpacking, lighthouse at end
6.4 total miles

***EUREKA WATERFRONT TRAIL***
Region: Humboldt Bay - Eureka
Acts: bike, rollerblade, walk
-easy walk, 1.5 miles along Elk River through Elk River Sanctuary

***South Spit*** [not real name, locals call it this]
Region: South Humboldt Bay
Acts: hiking, beach access, picnicking, dog walking, bird watching, fishing, hunting(only during waterfowl hunting season), horseback riding

***JAMES IRVINE TRAIL***
Region: Fern Canyon/Prarie Creek
Acts: hiking
moderate 5 mile hike
$8 entry fee (per person?)

***GOLD BLUFFS BEACH***
Region: Fern Canyon
Acts: camping

***FERN CANYON TRAIL***
Region: Fern Canyon/Redwood National Park
Acts: hiking
--short hike by Gold Bluffs' campsites
--easy .75 mile loop, 20 minute hike


***LADY BIRD JOHNSON TRAIL***
Region: Redwood National Park
Acts: hiking
-easy 1 mile loop

***CATHEDRAL TREES TRAIL***
Region: Redwood National Park
Acts: hiking
-easy to moderate 1.4 

***LOST MAN CREEK TRAIL***
Region: Redwood National Park
Acts: hiking, biking
-first 1/2 mile is easy 
-moderate unleveled ground

***CAL-BARREL ROAD***
Region: Redwood National Park
Acts: hiking(dogs welcomed)
- 3 mile dirt road
- easy

***TRILLIUM FALLS***
Region: Redwood National Park
Acts: hiking
-moderate with steep grades

***SKUNK CABBAGE CREEK***
Region: Redwood National Park
Acts: hiking
-easy, 2.8 miles round trip, longer trail option

***DOLASON PRAIRIE***
Region: Redwood National Park
Acts: hiking
-moderate 10 mile round trip

***REDWOOD CREEK TRAIL***
Region: Redwood National Park
Acts: hiking
-first 1.5 miles are easy
-moderate to strenuous
-8 miles to Tall Tree Grove
-two stream crossings
-only in spring

***TALL TREES GROVE***
Region: Redwood National Park
Acts: hiking
-strenuous
-access point Redwood Creek Trailhead on Bald Hills Road
-permit required

***HEADWATERS FOREST TRAIL***
Region: Eureka, Headwaters Preserve
Acts: hiking
-easy-moderate 11.2 miles

***FICKLE HILL GRADE #9, BIG ROCK TRAIL***
Region: Arcata Community Forest
Acts: hiking
- easy

***BEITH LOOPS TRAIL***
Region: Arcata Community Forest
Acts: hiking
-moderate

***FICKLE HILL GRADE TRAIL***
Region: Arcata Community Forest
Acts: hiking
-moderate
***MAD RIVER LEVEE LOOP***
Region: Blue Lake
Acts: hiking
-easy

***KLOPP LAKE TRAIL***
Region: Arcata Marsh & Wildlife Sanctuary
Acts: hiking
-easy
*/


----------------------------
---- POPULATING TABLES------
----------------------------

/*
------------------------------
***populating Activity table ***
------------------------------

Activity Legend
'000001' = 'Hiking'
'000002' = 'Camping'
'000003' = 'Surfing'
'000004' = 'Fishing'
'000005' = 'Climbing'
'000006' = 'Picknicking'
'000007' = 'Tide Pooling'
'000008' = 'Horseback Riding'
'000009' = 'Birding'
'000010' = 'Biking'
*/
insert into Activity
values
('000001', 'Hiking');

insert into Activity
values
('000002', 'Camping');

insert into Activity
values
('000003', 'Surfing');

insert into Activity
values
('000004', 'Fishing');

insert into Activity
values
('000005', 'Climbing');

insert into Activity
values
('000006', 'Picknicking');

insert into Activity
values
('000007', 'Tide Pooling');

insert into Activity
values
('000008', 'Horseback Riding');

insert into Activity
values
('000009', 'Birding');

insert into Activity
values
('000010', 'Biking');
/*
------------------------------
***populating Region table ***
------------------------------

Region Legend
'000001' = 'Prairie Creek Redood State Park'
	- Fern Canyon
	- Elk Meadows
'000002' = 'Patrick's Point State Park'
'000003' = 'McKinleyville'
'000004' = 'King Range National Conservation Area'
'000005' = 'Eureka'
'000006' = 'Headwaters Preserve'
	- S. Eureka
	- Loleta
	- Fortuna
'000007' = 'Redwood National Park'
'000008' = 'Arcata'
'000009' = 'Blue Lake'
'000010' = 'Six Rivers National Forest'

*/

insert into Region
values
('000001', 'Prairie Creek Redood State Park');

insert into Region
values
('000002', 'Patricks Point State Park');

insert into Region
values
('000003', 'McKinleyville');

insert into Region
values
('000004', 'King Range National Conservation Area');

insert into Region
values
('000005', 'Eureka');

insert into Region
values
('000006', 'Headwaters Preserve');

insert into Region
values
('000007', 'Redwood National Park');

insert into Region
values
('000008', 'Arcata');

insert into Region
values
('000009', 'Blue Lake');

insert into Region
values
('000010', 'Six Rivers National Forest');

/*
------------------------------
***populating Trail table ***
------------------------------
Trail_id, Trail_name, Trail_dif, Trail_len

beginner, easy, moderate, experienced
*/
insert into Trail
values
('000001', 'Berry Glen Trail', 'Moderate', '7.2');

insert into Trail(Trail_id, Trail_name)
values
('000002', 'Coastal Trail');

insert into Trail(Trail_id, Trail_name, Trail_len)
values
('000003', 'Rim Trail', '2.0');

insert into Trail(Trail_id, Trail_name, Trail_len)
values
('000004', 'Hammond Coastal Trail', '5.0');

insert into Trail(Trail_id, Trail_name, Trail_len)
values
('000005', 'Lost Coast Trail', '4.4');

insert into Trail(Trail_id, Trail_name, Trail_len)
values
('000006', 'Petrolia Trail', '6.4');

insert into Trail
values
('000007', 'Eureka Waterfront Trail', 'Easy', '1.5');

insert into Trail(Trail_id, Trail_name)
values
('000008', 'South Spit');

insert into Trail
values
('000009', 'James Irvine Trail', 'Moderate', '5.0');

insert into Trail(Trail_id, Trail_name)
values
('000010', 'Gold Bluffs Beach and Campground');

insert into Trail
values
('000011', 'Fern Canyon Trail', 'Beginner', '0.75');

insert into Trail
values
('000012', 'Lady Bird Johnson Trail', 'Easy', '1.0');

insert into Trail
values
('000013', 'Cathedral Trees Trail', 'Easy', '1.4');

insert into Trail
values
('000014', 'Lost Man Creek Trail', 'Easy', '0.5');

insert into Trail
values
('000015', 'Cal-Barrel Road', 'Easy', '3.0');

insert into Trail(Trail_id, Trail_name, Trail_dif)
values
('000016', 'Trillium Falls', 'Moderate');

insert into Trail
values
('000017', 'Skunk Cabbage Creek', 'Easy', '2.8');

insert into Trail
values
('000018', 'Dolason Prairie', 'Moderate', '10.0');

insert into Trail
values
('000019', 'Redwood Creek Trail #1', 'Beginner', '1.5');

insert into Trail
values
('000027', 'Redwood Creek Trail #2', 'Experienced', '8.0');

insert into Trail(Trail_id, Trail_name, Trail_dif)
values
('000020', 'Tall Trees Grove', 'Experienced');

insert into Trail
values
('000021', 'Headwaters Forest Trail', 'Moderate', '11.2');

insert into Trail(Trail_id, Trail_name, Trail_dif)
values
('000022', 'Fickle Hill Grade #9', 'Easy');

insert into Trail(Trail_id, Trail_name, Trail_dif)
values
('000023', 'Beith Loop Trail', 'Moderate');

insert into Trail(Trail_id, Trail_name, Trail_dif)
values
('000024', 'Fickle Hill Grade Trail', 'Moderate');

insert into Trail(Trail_id, Trail_name, Trail_dif)
values
('000025', 'Mad River Levee Loop', 'Easy');

insert into Trail(Trail_id, Trail_name, Trail_dif)
values
('000026', 'Klopp Lake Trail', 'Beginner');



--------------------------------------------------------------------------------------
-- populate TRegion and WRegion after Trail, Region, and Wildlife are populated.
/*
------------------------------
***populating TRegion***
------------------------------
*/

insert into TRegion
values
('000001', '000001');

insert into TRegion
values
('000002', '000001');

insert into TRegion
values
('000003', '000002');

insert into TRegion
values
('000004', '000003');

insert into TRegion
values
('000005', '000004');

insert into TRegion
values
('000006', '000004');

insert into TRegion
values
('000007', '000005');

insert into TRegion
values
('000008', '000005');

insert into TRegion
values
('000009', '000001');

insert into TRegion
values
('000010', '000001');

insert into TRegion
values
('000011', '000007');

insert into TRegion
values
('000012', '000007');

insert into TRegion
values
('000013', '000007');

insert into TRegion
values
('000014', '000007');

insert into TRegion
values
('000015', '000007');

insert into TRegion
values
('000016', '000007');

insert into TRegion
values
('000017', '000007');

insert into TRegion
values
('000018', '000007');

insert into TRegion
values
('000019', '000007');

insert into TRegion
values
('000027', '000007');

insert into TRegion
values
('000020', '000007');

insert into TRegion
values
('000021', '000006');

insert into TRegion
values
('000022', '000008');

insert into TRegion
values
('000023', '000008');

insert into TRegion
values
('000024', '000008');

insert into TRegion
values
('000025', '000007');

insert into TRegion
values
('000026', '000008');
/*
------------------------------
***populating TrailAct***
------------------------------
*/

insert into TrailAct
values
('000001', '000001');

insert into TrailAct
values
('000002', '000001');
insert into TrailAct
values
('000002', '000002');

insert into TrailAct
values
('000003', '000001');

insert into TrailAct
values
('000004', '000001');
insert into TrailAct
values
('000004', '000010');
insert into TrailAct
values
('000004', '000008');

insert into TrailAct
values
('000005', '000001');

insert into TrailAct
values
('000005', '000002');

insert into TrailAct
values
('000006', '000001');

insert into TrailAct
values
('000007', '000001');

insert into TrailAct
values
('000008', '000001');

insert into TrailAct
values
('000008', '000004');

insert into TrailAct
values
('000008', '000006');

insert into TrailAct
values
('000008', '000008');

insert into TrailAct
values
('000008', '000009');

insert into TrailAct
values
('000008', '000010');

insert into TrailAct
values
('000009', '000001');

insert into TrailAct
values
('000010', '000002');

insert into TrailAct
values
('000011', '000001');

insert into TrailAct
values
('000012', '000001');

insert into TrailAct
values
('000013', '000001');

insert into TrailAct
values
('000014', '000001');

insert into TrailAct
values
('000014', '000010');

insert into TrailAct
values
('000015', '000001');

insert into TrailAct
values
('000016', '000001');

insert into TrailAct
values
('000017', '000001');

insert into TrailAct
values
('000018', '000001');

insert into TrailAct
values
('000019', '000001');

insert into TrailAct
values
('000020', '000001');

insert into TrailAct
values
('000021', '000001');

insert into TrailAct
values
('000022', '000001');

insert into TrailAct
values
('000023', '000001');

insert into TrailAct
values
('000024', '000001');

insert into TrailAct
values
('000025', '000001');

insert into TrailAct
values
('000026', '000001');

/*
------------------------------
***populating WRegion***
------------------------------
can insert link to fish and wildlife brochure of wildlife
*/




