<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 11-11-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone-test/splash-page.php

-->

<style>

body[for="body_signup"] {font-family: Arial, Helvetica, sans-serif;}
* {box-sizing: border-box;}

/* Full-width input fields */
input[type=text_signup], input[type=password_signup] {
  width: 100%;
  padding: 15px;
  margin: 5px 0 22px 0;
  display: inline-block;
  border: none;
  background: #f1f1f1;
}

/* Add a background color when the inputs get focus */
input[type=text_signup]:focus, input[type=password_signup]:focus {
  background-color: #ddd;
  outline: none;
}

/* Set a style for all buttons */
button {
  background-color: #21781d;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  opacity: 0.9;
}


button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn_signup {
  padding: 14px 20px;
  background-color: #f44336;
}

/* Float cancel and signup buttons and add an equal width */
.cancelbtn_signup, .signupbtn {
  float: left;
  width: 50%;
}


/* Add padding to container elements */
.container_signup {
  padding: 16px;
}

/* The Modal (background) */
.modal_signup {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: #474e5d;
  padding-top: 50px;
}

/* Modal Content/Box */
.modal-content-signup {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 80%; /* Could be more or less, depending on screen size */
}
 
/* The Close Button (x) */
.close_signup {
  position: absolute;
  right: 35px;
  top: 15px;
  font-size: 40px;
  font-weight: bold;
  color: #f1f1f1;
}

.close_signup:hover,
.close_signup:focus {
  color: #f44336;
  cursor: pointer;
}

/* Clear floats */
.clearfix::after {
  content: "";
  clear: both;
  display: table;
}

/* Change styles for cancel button and signup button on extra small screens */
@media screen and (max-width: 300px) {
  .cancelbtn_signup, .signupbtn {
     width: 100%;
  }
}
</style>

<?php
/*====
function sign-up()
{
   ?>
   <p Called sign-up function </p>
   <?php
}
====*/

function signup()
{
   ?>
   <body for="body_signup" >
       <button for="button_signup" onclick="document.getElementById('id011').style.display='block'" style="width:auto;">Sign Up</button>

       <div id="id011" class="modal_signup">
           <span onclick="document.getElementById('id011').style.display='none'" class="close_signup" title="Close Modal">&times;</span>
           <form class="modal-content-signup" method="post" action="<?= htmlentities($_SERVER['PHP_SELF'], 
                                        ENT_QUOTES) ?>">
       <div class="container_signup">
         <h1>Sign Up</h1>
            <p>Please fill in this form to create an account.</p>
      <hr>
      	    <label for="email"><b>Email</b></label>
      	    <input type="text_signup" placeholder="Enter Email" name="email" required>

            <label for="phone_num"><b>Phone Number</b></label>
      	    <input type="text_signup" placeholder="Enter Phone Number" name="phone" required>

      	    <label for="psw"><b>Password</b></label>
      	    <input type="password" placeholder="Enter Password" name="psw" required>

      	    <label for="psw-repeat"><b>Repeat Password</b></label>
      	    <input type="password_signup" placeholder="Repeat Password" name="psw-repeat" required>
      
      	    <p>By creating an account you agree to our <a href="#" style="color:dodgerblue">Terms & Privacy</a>.</p>

      <div class="clearfix">
        <button type="button" for="button_signup" onclick="document.getElementById('id011').style.display='none'" class="cancelbtn_signup">Cancel</button>
        <button type="submit" for="button_signup" class="signupbtn">Sign Up</button>
      </div>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal_signup = document.getElementById('id011');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal_signup) {
    modal_signup.style.display = "none";
  }
}
</script>
</body>
<?php
}
?>
