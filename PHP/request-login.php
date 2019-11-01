<?php

/*=====
function request_login()
{
   ?>
   <p Called request_login() <p>
   <?php
}
=====*/

function request_login()
{
   ?>
        <form method="post" 
              action="<?= htmlentities($_SERVER['PHP_SELF'], 
                                        ENT_QUOTES) ?>">
        <fieldset>
            <legend> User Name and Password: </legend>

            <label for="username"> Username: </label>
            <input type="text" name="username" id="username" /> 

            <label for="password"> Password: </label>
            <input type="password" name="password" 
                   id="password" />

            <div class="submit">
                <input type="submit" value="login" />
            </div>
        </fieldset>
        </form>
<?php
}
?>

