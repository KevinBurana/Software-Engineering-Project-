<?php
    /* inserts answers from questionnaire into the database */

    function get_answers()
    {
        /*
        if ( (! array_key_exists("uname", $_POST)) or
        (! array_key_exists("psw", $_POST)) or
        ($_POST["uname"] == "") or
        ($_POST["psw"] == "") or
        (! isset($_POST["uname"])) or
        (! isset($_POST["psw"])) )
        {
            session_destroy();
        }
*/
   $username = strip_tags($_POST["uname"]);
   $password = $_POST["psw"];

   $_SESSION["uname"] = $username;
   $_SESSION["psw"] = $password;
 
   $conn = hsu_conn($username, $password);

   //sanitize form inputs 
 
   $dept_choice = htmlspecialchars(strip_tags($_POST["trip-start"]));

   // try to query chosen department's name and location
   //     (want to make sure get this even if empl has NO
   //     employees!)

   $dept_loc_str = "insert into UserQAns(Us_act_date)
                    values :trip-start";

   $dept_loc_stmt = oci_parse($conn, $dept_loc_str);

   oci_bind_by_name($dept_loc_stmt, ":trip-start", $dept_choice);
   oci_execute($dept_loc_stmt);

   // SHOULD only be ONE row in this result, but STILL must
   //     call oci_fetch to get it!

   oci_fetch($dept_loc_stmt);
   $chosen_name = oci_result($dept_loc_stmt, "US_ACT_DATE");
   oci_free_statement($dept_loc_stmt);
  
   echo $chosen_name
    }

?>