<?php
   session_start();
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 10-14-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone/splash-page.php

-->

<head>
    
    <title> Take A Hike! </title>
    <meta charset="utf-8" />

    <link href="https://nrs-projects.humboldt.edu/~st10/styles/normalize.css"
          type="text/css" rel="stylesheet" />
    <link href="https://nrs-projects.humboldt.edu/~kb2017/SE-Capstone/column.css"
          type="text/css" rel="stylesheet" />
	
</head>

<body>

    <center> <h1> Welcome To Your Adventure </h1> </center>

    <hr />

    <?php
      
      require_once("log-in.html");
    ?>


</body>
</html>