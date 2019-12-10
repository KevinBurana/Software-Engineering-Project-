<?php
function set_place()
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

    $conn = hsu_conn($username, $password);

    require_once("hover_menu.php");
    require_once("modal_question.php");

    if($trip_place == "forest")
    {
            $us_forest = "1";
            $us_river == "0";
            $us_beach == "0";
    }
    elseif($trip_place == "river")
    {
        $us_forest = "0";
        $us_river == "1";
        $us_beach == "0";
    }
    else
    {
        $us_forest = "0";
        $us_river == "0";
        $us_beach == "1";
    }


}
?>