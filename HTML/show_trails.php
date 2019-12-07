<?php

/*=====
function show_trails()
{
   ?>
   <p> Called show_trails() </p>
   <?php
}
=====*/

function show_trails()
{
   $username = $_SESSION["uname"];
   $password = $_SESSION["psw"];

   $conn = hsu_conn($username, $password);

   $trail_select = 'select *
                    from trail';

   $trail_info_stmt = oci_parse(hsu_conn($username, $password), $trail_select);

   oci_execute($trail_info_stmt, OCI_DEFAULT);
   ?>
        <center>
        <table>
        <caption> All Trails </caption>
        <tr> 
             <th scope="col"> Trail Name </th>
             <th scope="col"> Difficulty </th>
             <th scope="col"> Trail Length </th>
        </tr>
  
        <?php
        while (oci_fetch($trail_info_stmt))
        {
            $trail_name = oci_result($trail_info_stmt, "TRAIL_NAME");
            $trail_dif = oci_result($trail_info_stmt, "TRAIL_DIF");
            $trail_len = oci_result($trail_info_stmt, "TRAIL_LEN");
	    ?>
             
             <tr>
                  <td> <?= $trail_name ?> </td>
                  <td> <?= $trail_dif ?> </td>
                  <td> <?= $trail_len ?> </td>
             </tr>
        <?php
        }
        ?>
        </table>
        <form method="post" action="<?= htmlentities($_SERVER['PHP_SELF'], 
                                        ENT_QUOTES) ?>">
        <fieldset> 
                   <input type="submit" name="all_done" value="Home Page" />
        </fieldset>
             </form>
        </center>
        <?php
           oci_free_statement($trail_info_stmt);
           oci_close(hsu_conn($username, $password));
	}
?>