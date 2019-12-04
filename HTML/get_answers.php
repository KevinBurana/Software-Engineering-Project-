<?php
    /* inserts answers from questionnaire into the database */

    function get_answers()
    {
        if(isset($_POST["submit"]))
        {
            $username = strip_tags($_POST["uname"]);
            $password = $_POST["psw"];
         if(isset($_SESSION['uname']) && isset($_SESSION['psw']))
         {
            $_SESSION["uname"] = $username;
            $_SESSION["psw"] = $password;
         }
        
          
            $conn = hsu_conn($username, $password);


            // sanitizes trip-start 
            $trip_start = htmlspecialchars(strip_tags($_POST["trip-start"]));

            //sanitizes trip_place
            $trip_place = htmlspecialchars(strip_tags($_POST["place"]));
            // sets trip_place from input
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

            //sanitizing activity array
            $trip_act = htmlspecialchars(strip_tags($_POST["activity"]));
            // saves each value based on if checked
            foreach($trip_act as $activity)
            {
                if(isset($activity))
                {
                    $activity = "1";
                }
                else
                    $activity = "0";
            }

            // trip_hours variable
            $trip_hours = $_POST["hours"];

            // sanitizes user experience and pet going
            $user_exp = htmlspecialchars(strip_tags($_POST["diff"]));
            $pet_go= htmlspecialchars(strip_tags($_POST["pet"]));
            
            // sets go value based on yes (1) or no (0)
            if($pet_go == "yes")
            {
                $pet_go = "1";
            }
            else
                $pet_go = "0";
         
             // SQL insert string
            $query_str = "insert into UserQAns(nextval.User_QAns_sequence, 
                             values  :trip-start";
             // querying SQL string through connection
            $query_stmt = oci_parse($conn, $query_str);
         
            oci_bind_by_name($query_stmt, ":trip-start", $trip_start);
            oci_bind_by_name($query_stmt, ":place", $trip_place);
            oci_bind_by_name($query_stmt, ":activity1", $trip_act1);
            oci_bind_by_name($query_stmt, ":activity2", $trip_act2);
            oci_bind_by_name($query_stmt, ":activity3", $trip_act3);
            oci_bind_by_name($query_stmt, ":activity4", $trip_act4);
            oci_bind_by_name($query_stmt, ":activity5", $trip_act5);
            oci_bind_by_name($query_stmt, ":activity6", $trip_act6);
            oci_bind_by_name($query_stmt, ":activity7", $trip_act7);
            oci_bind_by_name($query_stmt, ":activity8", $trip_act8);
            oci_bind_by_name($query_stmt, ":hours", $trip_hours);
            oci_bind_by_name($query_stmt, ":diff", $user_exp);
            oci_bind_by_name($query_stmt, ":yes", $pet_yes);
            oci_bind_by_name($query_stmt, ":no", $pet_no);
         
         
            oci_commit($conn);
            oci_free_state($query_stmt);
            oci_close($conn);
         
            oci_execute($dept_loc_stmt, OCI_DEFAULT);
        
         
            oci_fetch($query_stmt);
            $chosen_name = oci_result($query_stmt, "US_ACT_DATE");
            
           
            echo $chosen_name
        }

        else{
            echo 'Script failed';
        }
   
    }

?>