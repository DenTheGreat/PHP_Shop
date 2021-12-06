<?php
    include 'dbh.inc.php';

    $name = $_POST['name'];
    $price = $_POST['price'];
    $descr = $_POST['descr'];
    $category = $_POST['category'];
    $id = $_POST['id'];

    update_good($name, $price, $descr, $category, $id);

    header("Location: ../edit-good.php");
?>