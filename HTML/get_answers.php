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
           echo "you are connected"; 
            // sanitizes trip-start 
            $trip_start = htmlspecialchars(strip_tags($_POST["trip-start"]));

            //sanitizes trip_place
            $trip_place = htmlspecialchars(strip_tags($_POST["place"]));
        

            //sanitizing activity array
            $trip_act = htmlspecialchars(strip_tags($_POST["activity"]));
            // saves each value based on if checked
            $activity = "";
            foreach($trip_act as $activity)
            {
                if(isset($activity))
                {
                    $trip_act = "1". ",";
                }
                else
                    $trip_act = "0" . ",";
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
            $query_str = "insert into UserQAns(Us_Act_date, Us_Camp_q,
                                                Us_Hike_q, Us_Fish_q, Us_MountB_q,
                                                Us_Kayak_q, Us_PaddleB_q, Us_Surf_q, Us_Other_q,
                                                Us_Time_out, Us_Outdoors_lvl, Us_Pet_q,
                             values  (':trip-start', ':place', explode('$activity'),
                                      ':trip-hours', ':diff', ':pet')" ;
             // querying SQL string through connection
            $query_stmt = oci_parse($conn, $query_str);
         
            oci_bind_by_name($query_stmt, ":trip-start", $trip_start);
            oci_bind_by_name($query_stmt, ":place", $trip_place);
            oci_bind_by_name($query_stmt, ":activity", $activity);
            oci_bind_by_name($query_stmt, ":hours", $trip_hours);
            oci_bind_by_name($query_stmt, ":diff", $user_exp);
            oci_bind_by_name($query_stmt, ":pet", $pet_go);
         
         
            oci_commit($conn);
            oci_free_state($query_stmt);
            oci_close($conn);
         
            oci_execute($dept_loc_stmt, OCI_DEFAULT);
        
         
            oci_fetch($query_stmt);
            $chosen_query = oci_result($query_stmt, "US_ACT_DATE, US_CAMP_Q, US_HIKE_Q,
                                        US_FISH_Q, US_MOUNTB_Q, US_KAYAK_Q, US_PADDLEB_Q,
                                        US_SURF_Q, US_OTHER-Q, US_TIME_OUT, US_OUTDOORS_LVL, 
                                        US_PET_Q");
        
            echo "hello";
            echo $chosen_query;
        }
        echo "failed";
    }

?>