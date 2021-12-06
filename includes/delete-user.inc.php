<?php
  require 'dbh.inc.php';
  
    delete_user($_GET['id']);
    header("Location: ../show-users.php");
?>
