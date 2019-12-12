/* Ashleigh Robie
CS 458 - Trail Expert System
Last modified: 12-2-2019 */


%% FACTS 

%% trails with primary keys
trail(000001).
trail(000002).
trail(000003).
trail(000004).
trail(000005).
trail(000006).
trail(000007).
trail(000008).
trail(000009).
trail(000010).
trail(000011).
trail(000012).
trail(000013).
trail(000014).
trail(000015).
trail(000016).
trail(000017).
trail(000018).
trail(000019).
trail(000020).
trail(000021).
trail(000022).
trail(000023).
trail(000024).
trail(000025).
trail(000026).

%% trail difficulty
tDifficulty(beginner).
tDifficulty(easy).
tDifficulty(moderate).
tDifficulty(experienced).

%% user experience level
uExperience(novice).
uExperience(moderate).
uExperience(experienced).

%% pet adventure: 0 - no pet; 1 - pet 
petGo(0).
petGo(1).

%% check what weather sites use
%% weather forecast
forecast(sunny).
forecast(cloudy).
forecast(foggy).
forecast(snow).
forecast(rain).
forecast(showers).

%% weather that is ok for beginners to travel
noviceWeather :- forecast(sunny), !.
noviceWeather :- forecast(cloudy), !.
noviceWeather :- forecast(foggy).

%% weather that is okay for moderate hikers
moderateWeather :- noviceWeather, !.
moderateWeather :- forecast(rain).

%% all weather conditions are okay for experienced hikers
advanceWeather :- moderateWeather, !.
advanceWeather :- forecast(snow), !.
advanceWeather :- forecast(showers).

%% trail difficult appropiate for novice hikers
noviceTrail :- tDifficulty(beginner).

%% trail difficult appropiate for moderate hikers
moderateTrail :- noviceTrail, !.
moderateTrail :- tDifficulty(easy), !.
moderateTrail :- tDifficulty(moderate).

%% trail difficult appropiate for experienced hikers
advanceTrail :- moderateTrail, !.
advanceTrail :- tDifficulty(experienced).


