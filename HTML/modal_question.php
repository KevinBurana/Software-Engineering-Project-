<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 11-15-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone/modal-question.php

-->

<style>
body[for="body_question"] {font-family: Arial, Helvetica, sans-serif;}

button[for="button_question"]
{
  background-color: #21781d;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

/* The Modal (background) */
.modal_question {
  display: none; /* Hidden by default */
  position: fixed; /* Stay in place */
  z-index: 1; /* Sit on top */
  padding-top: 100px; /* Location of the box */
  left: 0;
  top: 0;
  width: 100%; /* Full width */
  height: ; /* Full height */
  overflow: auto; /* Enable scroll if needed */
  background-color: rgb(0,0,0); /* Fallback color */
  background-color: rgba(0,0,0,0.4); /* Black w/ opacity */
  max-height: calc(100vh - 100px);
}


/* Modal Content */
.modal-content-question {
  background-color: #fefefe;
  margin: auto;
  padding: 20px;
  border: 1px solid #888;
  width: 80%;
}

/* The Close Button */
.close_question {
  color: #aaaaaa;
  float: right;
  font-size: 28px;
  font-weight: bold;
}

.close_question:hover,
.close_question:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>

<?php
/*====
function modal_question()
{
   ?>
   <p Called modal question </p>
   <?php
}
====*/

function modal_question()
{
   ?>
   <body>

   <!-- Trigger/Open The Modal -->
   <button id="myBtn_question" for="button_question">Take The Questionare</button>

   <!-- The Modal -->
   <div id="myModal_question" class="modal_question">

     <!-- Modal content -->
     <div class="modal-content-question">
       <span class="close_question">&times;</span>
          <?php
             require_once("questions.html");
          ?>
     </div>

   </div>

<script>
// Get the modal
var modal_question = document.getElementById("myModal_question");

// Get the button that opens the modal
var btn_question = document.getElementById("myBtn_question");

// Get the <span> element that closes the modal
var span_question = document.getElementsByClassName("close_question")[0];

// When the user clicks the button, open the modal 
btn_question.onclick = function() {
  modal_question.style.display = "block";
}

// When the user clicks on <span> (x), close the modal
span_question.onclick = function() {
  modal_question.style.display = "none";
}

// When the user clicks anywhere outside of the modal, close it
window.onclick = function(event) {
  if (event.target == modal_question) {
    modal_question.style.display = "none";
  }
}
</script>
</body>
<?php
}
?>
