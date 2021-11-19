<?php
    ob_start();
    include 'dbh.inc.php';
    $id_user = $_POST['id_user'];
    $id_goods = $_POST['id_goods'];
    $quantity = $_POST['quantity'];

   add_good_to_user($id_user, $id_goods, $quantity);


   

    header("Location: ../basket.php");
    ob_end_flush();
?>
    
