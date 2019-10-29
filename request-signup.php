<?php

/*=====
function request_signup()
{
   ?>
   <p Called request_signup() <p>
   <?php
}
=====*/

function request_signup()
{
   ?>
        <form method="post" 
              action="<?= htmlentities($_SERVER['PHP_SELF'], 
                                        ENT_QUOTES) ?>">
        <fieldset>
            <legend> User Name and Password: </legend>

            <label for="username"> Phone Number: </label>
            <input type="text" name="phonenumber" id="phonenumber" /> 
			
			<label for="username"> Email: </label>
            <input type="text" name="email" id="email" />

            <label for="password"> Password: </label>
            <input type="password" name="password" 
                   id="password" />

            <div class="submit">
                <input type="submit" value="signup" />
            </div>
        </fieldset>
        </form>
<?php
}
?>

