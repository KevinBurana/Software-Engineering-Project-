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
----------------------------
---- POPULATING TABLES------
----------------------------

-- ***populating Activity table
insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Hiking');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Camping');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Surfing');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Fishing');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Climbing');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Hanging Out');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Tide Pooling');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Horseback Riding');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Dog Walking');

insert into Activity
values
(Activity_sequence.nextval, /*trail id*/, /* Q id*/, 'Birding');

-- ***populating Trail table

/*
***BERRY GLEN TRAIL***
Region: Orick, Elk Meadows
Acts: hiking
-moderate to strenuous
-7.2 miles round trip; climb 1270 ft
*/

insert into Trail
values
(Trail_sequence.nextval, /* act id*/, /*region id*/, 'Berry Glen Trail');

/*
***COSTAL TRAIL***
Region: Prairie Creek Redwoods State Park
Acts: hiking, camping, Carruthers Cove(only low tide)
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*/, /* region id*/, 'Coastal Trail');

/* 
***RIM TRAIL***
Region: Patrick's Point State Park
Acts: hiking
-both beach and forest
-Rim trail is 2 miles along the coast
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*/, /* region id*/, 'Rim Trail');

/*
***HAMMOND COASTAL TRAIL***
Region: McKinleyville
Acts: hiking, biking, running, horseback riding
5+ miles total
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Mckinleyville*/, 'Hammond Coastal Trail');

insert into Trail
values
(Trail_sequence.nextval, /* act id- running*/, /* region id- Mckinleyville*/, 'Hammond Coastal Trail');

insert into Trail
values
(Trail_sequence.nextval, /* act id- biking*/, /* region id- Mckinleyville*/, 'Hammond Coastal Trail');

insert into Trail
values
(Trail_sequence.nextval, /* act id- horseback riding*/, /* region id- Mckinleyville*/, 'Hammond Coastal Trail');
/*
***LOST COAST TRAIL***
Region: Shelter Cove
Acts: hiking, camping
4.4 miles
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'Lost Coast Trail');

insert into Trail
values
(Trail_sequence.nextval, /* act id*- biking/, /* region id*/, 'Lost Coast Trail');

/*
***PETROLIA***
Region: King Range National Conservation
Acts: hiking/backpacking, lighthouse at end
6.4 total miles
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'Petrolia Trail');

/*
***EUREKA WATERFRONT TRAIL***
Region: Humboldt Bay - Eureka
Acts: bike, rollerblade, walk
-easy walk, 1.5 miles along Elk River through Elk River Sanctuary
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- biking/, /* region id*/, 'Eureka Waterfront Trail');

insert into Trail
values
(Trail_sequence.nextval, /* act id*- walking/, /* region id*/, 'Eureka Waterfront Trail');

/*
***Sout Spit*** [not real name, locals call it this]
Region: South Humboldt Bay
Acts: hiking, beach access, picnicking, dog walking, bird watching, fishing, hunting(only during waterfowl hunting season), horseback riding
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking*/, /* region id */, 'South Spit');

insert into Trail
values
(Trail_sequence.nextval, /* act id*- dog walking/, /* region id*/, 'South Spit');

insert into Trail
values
(Trail_sequence.nextval, /* act id*- picknicking/, /* region id*/, 'South Spit');

insert into Trail
values
(Trail_sequence.nextval, /* act id*- bird watching/, /* region id*/, 'South Spit');

insert into Trail
values
(Trail_sequence.nextval, /* act id*- fishing/, /* region id*/, 'South Spit');

insert into Trail
values
(Trail_sequence.nextval, /* act id*- horsebackriding/, /* region id*/, 'South Spit');
/*
***JAMES IRVINE TRAIL***
Region: Fern Canyon/Prarie Creek
Acts: hiking
moderate 5 mile hike
$8 entry fee (per person?)
*/

insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'James Irvine Trail');

/*
***GOLD BLUFFS BEACH***
Region: Fern Canyon
Acts: camping
*/

insert into Trail
values
(Trail_sequence.nextval, /* act id*- camping/, /* region id- fern canyon*/, 'Gold Bluffs Beach & Campground');

/*
***FERN CANYON TRAIL***
Region: Fern Canyon/Redwood National Park
Acts: hiking
--short hike by Gold Bluffs' campsites
--easy .75 mile loop, 20 minute hike
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- fern canyon*/, 'Fern Canyon Trail');

/*
***LADY BIRD JOHNSON TRAIL***
Region: Redwood National Park
Acts: hiking
-easy 1 mile loop
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Lady Bird Johnson Trail');

/*
***CATHEDRAL TREES TRAIL***
Region: Redwood National Park
Acts: hiking
-easy to moderate 1.4 
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Cathedral Trees Trail');

/*
***LOST MAN CREEK TRAIL***
Region: Redwood National Park
Acts: hiking, biking
-first 1/2 mile is easy 
-moderate unleveled ground
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Lost Man Creek Trail');

/*
***CAL-BARREL ROAD***
Region: Redwood National Park
Acts: hiking(dogs welcomed)
- 3 mile dirt road
- easy
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Cal-Barrel Road');

/*
***TRILLIUM FALLS***
Region: Redwood National Park
Acts: hiking
-moderate with steep grades
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Trillium Falls');

/*
***SKUNK CABBAGE CREEK***
Region: Redwood National Park
Acts: hiking
-easy, 2.8 miles round trip, longer trail option
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Skunk Cabbage Creek');

/*
***DOLASON PRAIRIE***
Region: Redwood National Park
Acts: hiking
-moderate 10 mile round trip
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Dolason Prairie');

/*
***REDWOOD CREEK TRAIL***
Region: Redwood National Park
Acts: hiking
-first 1.5 miles are easy
-moderate to strenuous
-8 miles to Tall Tree Grove
-two stream crossings
-only in spring
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Redwood Creek Trail');

/*
***TALL TREES GROVE***
Region: Redwood National Park
Acts: hiking
-strenuous
-access point Redwood Creek Trailhead on Bald Hills Road
-permit required
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Redwood National Park*/, 'Tall Trees Grove');

/*
***HEADWATERS FOREST TRAIL***
Region: Eureka, Headwaters Preserve
Acts: hiking
-easy-moderate 11.2 miles
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id- Eureka*/, 'Headwaters Forest Trail');

/*
***FICKLE HILL GRADE #9, BIG ROCK TRAIL***
Region: Arcata Community Forest
Acts: hiking
- easy
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'Fickle Hill Grade #9');

/*
***BEITH LOOPS TRAIL***
Region: Arcata Community Forest
Acts: hiking
-moderate
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'Beith Loop Trail');

/*
***FICKLE HILL GRADE TRAIL***
Region: Arcata Community Forest
Acts: hiking
-moderate
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'Fickle Hill Grade Trail');

/*
***MAD RIVER LEVEE LOOP***
Region: Blue Lake
Acts: hiking
-easy
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'Mad River Levee Loop');

/*
***KLOPP LAKE TRAIL***
Region: Arcata Marsh & Wildlife Sanctuary
Acts: hiking
-easy
*/
insert into Trail
values
(Trail_sequence.nextval, /* act id*- hiking/, /* region id*/, 'Klopp Lake Trail');

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