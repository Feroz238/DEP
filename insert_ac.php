<?php
if ((isset($_POST['age'])) && (is_numeric($_POST['age']))) {
    // do something;
  } else {
   echo '<p>You forgot to enter your age.</p>';
  }



?>