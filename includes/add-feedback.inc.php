<?php
    include 'dbh.inc.php';
    $name = $_POST['name'];
    $id_goods = $_POST['id_goods'];
    $textfeed = $_POST['textfeed'];
    $result = add_feedback($name, $textfeed, $id_goods);
header("location:http://localhost/site/goods.php?id=$id_goods"); 
    echo $name, $textfeed, $id_goods;
    echo $result;?>