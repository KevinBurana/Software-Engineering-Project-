<!--
    by: Ashleigh, Kevin, Shaan, Tyrone
    last modified: 11-29-2019

    you can run this using the URL: http://nrs-projects.humboldt.edu/~kb2017/SE-Capstone/hover_menu.php

-->

<style>
.dropbtn {
  background-color: #21781d;
  color: white;
  padding: 16px;
  font-size: 16px;
  border: none;
}

.dropdown {
  position: relative;
  display: inline-block;
}

.dropdown-content {
  display: none;
  position: absolute;
  background-color: #f1f1f1;
  min-width: 160px;
  box-shadow: 0px 8px 16px 0px rgba(0,0,0,0.2);
  z-index: 1;
}

.dropdown-content a {
  color: black;
  padding: 12px 16px;
  text-decoration: none;
  display: block;
}

.dropdown-content a:hover {background-color: #ddd;}

.dropdown:hover .dropdown-content {display: block;}

.dropdown:hover .dropbtn {background-color: #3e8e41;}
</style>

<?php
/*====
function hover_menu()
{
   ?>
   <p Called hover function </p>
   <?php
}
====*/

function hover_menu()
{
   ?>
    <body>
      <div class="dropdown">
        <button class="dropbtn">Menu</button>
        <div class="dropdown-content">
          <form method="post" >
          <a href="#">Show All Trails </a>
          <a href="#">My Suggested Trails</a>
          <a href="logout.php">Logout</a>
          </form>
        </div>
      </div>
</body>
<?php
}
?>