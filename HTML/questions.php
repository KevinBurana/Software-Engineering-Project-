<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 11-29-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone/questions.html

-->

<head>
<meta charset="UTF-8">
<title> Take A Hike </title>
<h1> Adventure Questionnaire </h1>

<hr>


</head>
<body>
<form method = "POST" action = "get_answers.php">
 <fieldset for="questions">
  <legend> Please answer the following questions  </legend>
    <label>
        <strong>Choose a date for your adventure.</strong> <br/>
        <input type="date" id="start" name ="trip-start"
            value ="YYYY-MM-DD"
            min="2019-12-05" max="2100-12-31"/>
    </label>  <br/><br/>

    <label>
        <strong> Where would you like to go? </strong>  <br/>
        <input type="radio" name="place" value="forest"/> Forest 
        <input type="radio" name="place" value="river"> River 
        <input type="radio" name="place" value="beach"/> Beach 
    </label> <br/><br/>

    <label>
        <strong> What activity would you like to do? </strong> <br/>
        <input type ="checkbox" name="activity[]" value="camp"/> Camping
        <input type ="checkbox" name="activity[]" value="hike"/> Hiking 
        <input type ="checkbox" name="activity[]" value="fishing"/> Fishing
        <input type ="checkbox" name="activity[]" value="mountainbike"/> Mountain Biking <br/>
        <input type ="checkbox" name="activity[]" value="kayak"/> Kayaking  
        <input type ="checkbox" name="activity[]" value="paddleboard"/> Paddle Boarding  
        <input type ="checkbox" name="activity[]" value="surf"/> Surfing 
        <input type ="checkbox" name="activity[]" value="other"/> Other 
    </label> <br/><br/>
   
    <label>
        <strong>How many hours would you like to be outside? </strong>
        <input type = "number" name="hours" value = "0" min="1" max="10"/> Hours 
    </label> <br/><br/>
   
    <label>
        <strong> What is your outdoors experience? </strong><br/>
        <input type="radio" name="diff" value="novice"/> Novice 
        <input type="radio" name="diff" value="intermediate"/> Intermediate 
        <input type="radio" name="diff" value="advanced"/> Advanced 
    </label> <br/><br/>

    <label>
        <strong> Will you be bringing pets? </strong>
        <input type ="radio" name="pet" value="yes"/> Yes  
        <input type ="radio" name="pet" value="no"/> No  
    </label> <br/>
	<hr>
    <input type="submit" value="Submit"> 
 </fieldset>
</form>
</body>
</html>