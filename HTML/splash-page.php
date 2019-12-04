<?php
   session_start();
?>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">

<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 12-03-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone-test/splash-page.php

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
       require_once("show_trails.php");
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
        if ( (! array_key_exists("uname", $_POST)) or
         (! array_key_exists("psw", $_POST)) or
         ($_POST["uname"] == "") or
         ($_POST["psw"] == "") or
         (! isset($_POST["uname"])) or
         (! isset($_POST["psw"])) )
       {
          session_destroy();
       }

       $username = strip_tags($_POST["uname"]);
       $password = $_POST["psw"];

       $_SESSION["uname"] = $username;
       $_SESSION["psw"] = $password;

       get_home_info();
       $_SESSION["next_state"] = "trails";
    }
    elseif ($_SESSION["next_state"] == "trails")
    {
       show_trails();
       $_SESSION["next_state"] = "home";
    }
    elseif ($_SESSION["next_state"] == "home" && (array_key_exists("all_done", $_POST)))
    {
       get_home_info();
    }
    ?>
    
</body>
</html>