<?php
/*=====
function destroy_sesh()
{
   ?>
   <p> Called destroy_sesh() BYE! </p>
   <?php
}
=====*/

function destroy_sesh($complaint)
{
    ?>
    <p> CANNOT CONTINUE: <?= $complaint ?> 
    </p>
    <p> <a href="<?= htmlentities($_SERVER['PHP_SELF'], ENT_QUOTES) ?>">
        Try again </a> </p>
    <?php
    session_destroy();
    exit;
}
?>