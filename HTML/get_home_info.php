<?php

/*=====
function get_home_info()
{
   ?>
   <p> Called get_home_info() </p>
   <?php
}
=====*/

function get_home_info()
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
   ?>
   <?php
      require_once("hover_menu.php");
      require_once("modal_question.php");
   ?>
<body>

    <hr />

    <?php
       hover_menu();
       modal_question();
    ?>

</body>
<?php
}
?>