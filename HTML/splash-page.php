<?php
   session_start();
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 11-29-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone/splash-page.php

-->

<head>
    
    <title> Take A Hike! </title>
    <meta charset="utf-8" />

    <?php
       require_once("signup.php");
       require_once("login.php");
       require_once("hsu_conn.php");
       require_once("get_home_info.php");
       require_once("destroy_sesh.php");
    ?>
</head>

<body>

    <center> <h1> Humboldt Hike! </h1> </center>

    <?php
    if ( ! array_key_exists("next_state", $_SESSION) )
    {
       signup();
       login();
       $_SESSION["next_state"] = "home";
    }
    elseif ($_SESSION["next_state"] == "home")
    {
       get_home_info();
    }
    ?>

    
</body>
</html>