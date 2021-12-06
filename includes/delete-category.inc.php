<?php
  require 'dbh.inc.php';
  
    
    $id = $_POST['category'];

    delete_category($id);
    header("Location: ../delete-category.php");
?>
