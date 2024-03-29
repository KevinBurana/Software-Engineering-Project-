<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 12-03-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone-test/login.php

-->

<style>
body[for="body_login"]{font-family: Arial, Helvetica, sans-serif;}

/* Full-width input fields */
input[type=text_login], input[type=password] {
  width: 100%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  box-sizing: border-box;
}

/* Set a style for all buttons */
button[for=button_login] {
  background-color: #21781d;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  cursor: pointer;
  width: 100%;
  opacity: 0.9;
}

button:hover {
  opacity:1;
}

/* Extra styles for the cancel button */
.cancelbtn_login {
  width: auto;
  padding: 10px 18px;
  background-color: #f44336;
}

/* Center the image and position the close button */
.imgcontainer {
  text-align: center;
  margin: 24px 0 12px 0;
  position: relative;
}

img.avatar {
  width: 40%;
  border-radius: 50%;
}

.container_login {
  padding: 16px;
}

span.psw {
  float: right;
  padding-top: 16px;
}

/* The Modal (background) */
.modal_login {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: 100%; /* Full height */
  overflow: hidden; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  padding-top: 60px;
}

/* Modal Content/Box */
.modal-content {
  background-color: #fefefe;
  margin: 5% auto 15% auto; /* 5% from the top, 15% from the bottom and centered */
  border: 1px solid #888;
  width: 50%; /* Could be more or less, depending on screen size */
}

/* The Close Button (x) */
.close_login {
  position: absolute;
  right: 25px;
  top: 0;
  color: #000;
  font-size: 35px;
  font-weight: bold;
}

.close:hover,
.close:focus {
  color: red;
  cursor: pointer;
}

/* Add Zoom Animation */
.animate {
  -webkit-animation: animatezoom 0.6s;
  animation: animatezoom 0.6s
}

@-webkit-keyframes animatezoom {
  from {-webkit-transform: scale(0)} 
  to {-webkit-transform: scale(1)}
}
  
@keyframes animatezoom {
  from {transform: scale(0)} 
  to {transform: scale(1)}
}

/* Change styles for span and cancel button on extra small screens */
@media screen and (max-width: 300px) {
  span.psw_login {
     display: block;
     float: none;
  }
  .cancelbtn_login {
     width: 100%;
  }
}
</style>

<?php
/*====
function login()
{
   ?>
   <p Called login function </p>
   <?php
}
====*/

function login()
{
   ?>
   <body for="body_login">
        <button for="button_login" onclick="document.getElementById('id01').style.display='block'" style="width:auto;">Login</button>

	<div id="id01" class="modal_login">
            <form class="modal-content animate" method="post" action="<?= htmlentities($_SERVER['PHP_SELF'], 
                                        ENT_QUOTES) ?>">
        <div class="imgcontainer">
            <span onclick="document.getElementById('id01').style.display='none'" class="close_login" title="Close Modal">&times;</span>
               <img src="img_avatar2.png" alt="Avatar" class="avatar">
        </div>

    <div class="container_login">
      <label for="uname"><b>Username</b></label>
      <input type="text_login" placeholder="Enter Username" name="uname" required>

      <label for="psw"><b>Password</b></label>
      <input type="password" placeholder="Enter Password" name="psw" required>
        
      <button for="button_login" type="submit">Login</button>
      </div>

    <div class="container_login" style="background-color:#f1f1f1">
      <button for="button_login" type="button" onclick="document.getElementById('id01').style.display='none'" class="cancelbtn_login">Cancel</button>
      <span class="psw_login">Forgot <a href="#">password?</a></span>
    </div>
  </form>
</div>

<script>
// Get the modal
var modal_login = document.getElementById('id01');

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
    if (event.target == modal_login) {
        modal_login.style.display = "none";
    }
}
</script>
</body>
<?php
}
?>