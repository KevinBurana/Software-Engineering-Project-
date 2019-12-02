/* 
Ashleigh Robie
Last modified: 12.1.2019

info URL: 
https://www.swi-prolog.org/pldoc/doc_for?object=section(%27packages/odbc.html%27)
*/

%% Setting global properties
globalConnect :- odbc_set_option(connection_pooling(true)).

%% nrs-projects is DNS; 
userLogin :- odbc_connect('nrs-projects', _, 
						[user(User_id),
						 password(password),
						 alias(nrsprojects),
						 open(once)].
						 
%%	calling user's answers from UserGAns 
	

%% inserts chosen trail into database	
						 
						 
%% at logout disconnect from database
userlogout :- odbc_disconnect(_).