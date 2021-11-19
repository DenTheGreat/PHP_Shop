<?php
  require 'dbh.inc.php';
  
    delete_from_basket($_GET['id']);
    header("Location: ../basket.php");
?>
