<?php
  require 'dbh.inc.php';
  
    
    $name_cat = $_POST['name_cat'];
    $sub_cat[0] = $_POST['sub_cat'];
    $sub_cat[1] = $_POST['sub_cat1'];
    $sub_cat[2] = $_POST['sub_cat2'];


    $result = add_category($name_cat, $sub_cat);
    header("Location: ../admin/add-category.php");
?>
