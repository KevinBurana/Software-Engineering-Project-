<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body[for="body_question"] {font-family: Arial, Helvetica, sans-serif;}

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

.clos_questione:hover,
.close_question:focus {
  color: #000;
  text-decoration: none;
  cursor: pointer;
}
</style>
</head>
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
</html>
