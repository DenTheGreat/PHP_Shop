<?php
    ob_start();
    include 'dbh.inc.php';
    $name = $_POST['name'];
    $price = $_POST['price'];
    $descr = $_POST['descr'];
    $category = $_POST['category'];

    $last_path = "../".add_goods($name, $price, $img_for_db, $category, $descr);

    mkdir($last_path);
    $count_files = count($_FILES['file']['name']);

    for ($i = 0; $i < $count_files; $i++)
    { 
        switch ($i) {
            case 0:
                $new_name = "1";
                break;
        }

        $tmp_path = $_FILES['file']['tmp_name'][$i];
        $file_name = $_FILES['file']['name'][$i];

        $file_path_store = $last_path."/".$new_name.".jpeg";

        move_uploaded_file($tmp_path, $file_path_store);
    }

   

    header("Location: ../admin/add-good.php");
    ob_end_flush();
?>
    
