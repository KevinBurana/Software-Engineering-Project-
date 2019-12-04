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


            // read in inputs to mark what to input into the database
            if($_POST['place'] == "forest")
            {
                    $trip_place = "forest";
            }
            elseif($_POST['place'] == "river")
            {
                $trip_place = "river";
            }
            else
            {
                $trip_place = "beach";
            }
         
            //sanitizing form inputs 
            
            $trip_start = htmlspecialchars(strip_tags($_POST["trip-start"]));
            $trip_place = htmlspecialchars(strip_tags($_POST["place"]));
            $trip_act1 = htmlspecialchars(strip_tags($_POST["activity1"]));
            $trip_act2 = htmlspecialchars(strip_tags($_POST["activity2"]));
            $trip_act3 = htmlspecialchars(strip_tags($_POST["activity3"]));
            $trip_act4 = htmlspecialchars(strip_tags($_POST["activity4"]));
            $trip_act5 = htmlspecialchars(strip_tags($_POST["activity5"]));
            $trip_act6 = htmlspecialchars(strip_tags($_POST["activity6"]));
            $trip_act7 = htmlspecialchars(strip_tags($_POST["activity7"]));
            $trip_act8 = htmlspecialchars(strip_tags($_POST["activity8"]));
            $trip_hours = $_POST["hours"];
            $user_exp = htmlspecialchars(strip_tags($_POST["diff"]));
            $pet_yes = htmlspecialchars(strip_tags($_POST["yes"]));
            $pet_no = htmlspecialchars(strip_tags($_POST["no"]));
         
         
             // SQL insert string
            $query_str = "insert into UserQAns(
                             values :trip-start";
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