
<?php
  session_start();
    ob_start();
    include 'dbh.inc.php';
    
    $firstname = $_POST['firstname'];
    $secondname = $_POST['secondname'];
    $email = $_POST['email'];
    $adress = $_POST['adress'];
    $id_user = $_POST['id_user'];
    $price = $_POST['price'];
    
    $goodss = get_user_goods($_SESSION['id']);
                foreach ($goodss as $goodd) {
                 $goods = get_good($goodd['id_goods']);
                    foreach($goods as $good) {
                $id_good = $good['id'];
   create_order($id_user, $id_good, $price, $firstname, $secondname, $email, $adress);

}}
delete_from_orders($id_user);


   

    header("Location: ../orders.php");
    ob_end_flush();
?>
    
