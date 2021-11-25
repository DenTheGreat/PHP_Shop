<?php
$connServername = "localhost";
$connUsername = "root";
$connPassword = "";
$connName = "shop";
$port = "3306";

// Create connection
$conn = mysqli_connect($connServername, $connUsername, $connPassword, $connName, $port);
$conn_catalog = mysqli_select_db($conn, $connName);

function get_category()
{
    global $conn;
    $sql = "SELECT * FROM category";
    $category = mysqli_query($conn, $sql);

    return $category;
}

function search($title)
{
    global $conn;
    $sql = "SELECT * FROM goods WHERE name like \"%$title%\"";
    $result = mysqli_query($conn, $sql);

    return $result;
}

function get_subCategory($id)
{
    global $conn;
    $sql = "SELECT * FROM sub WHERE id_cat = $id";
    $sub = mysqli_query($conn, $sql);

    return $sub;
}

function get_all_goods()
{
    global $conn;
    $sql = "SELECT * FROM goods";
    $goods = mysqli_query($conn, $sql);

    return $goods;
}

function get_good($id)
{
    global $conn;
    $sql = "SELECT * FROM goods WHERE id = $id";
    $good = mysqli_query($conn, $sql);

    return $good;
}

function get_goods_by_subCat($id)
{
    global $conn;
    $sql = "SELECT * FROM goods WHERE category = $id";
    $good = mysqli_query($conn, $sql);

    return $good;
}

function get_name_subCategory($id)
{
    global $conn;
    $sql = "SELECT * FROM sub WHERE id_cat = $id";
    $subs = mysqli_query($conn, $sql);

    foreach ($subs as $sub)
        return $sub['name'];
}

function get_users()
{
    global $conn;
    $sql = "SELECT * FROM users";
    $result = mysqli_query($conn, $sql);
    return $result;
}

function delete_user($idUsers)
{
    global $conn;
    $sql = "DELETE FROM users WHERE idUsers = $idUsers";
    $result = mysqli_query($conn, $sql);
}

function get_last_category()
{
    global $conn;
    $sql = "SELECT * FROM category ORDER BY id DESC LIMIT 1";
    $results = mysqli_query($conn, $sql);

    foreach ($results as $res)
        return $res['id'];
}

function add_category($category, $sub)
{
    global $conn;
    $sql = "INSERT INTO category (name) VALUES('$category')";
    $result = mysqli_query($conn, $sql);

    $id_last = get_last_category();

    for ($i = 0; $i < 3; $i++) {
        $sql = "INSERT INTO sub(id_cat, name) VALUES($id_last, '$sub[$i]');";
        $result = mysqli_query($conn, $sql);
    }
}

function delete_category($id)
{
    global $conn;
    $sql = "DELETE FROM category WHERE id = $id";
    $result = mysqli_query($conn, $sql);
    $result = delete_subCategory($id);
}

function delete_subCategory($id)
{
    global $conn;
    $sql = "DELETE FROM sub WHERE id_cat = $id";
    $result = mysqli_query($conn, $sql);
}

function get_last_good()
{
    global $conn;
    $sql = "SELECT * FROM goods ORDER BY id DESC LIMIT 1";
    $goods = mysqli_query($conn, $sql);

    foreach ($goods as $good)
        return $good['id'];
}

function get_subCategory_by_name($name)
{
    global $conn;
    $sql = "SELECT * FROM sub WHERE name = \"$name\" ";
    $subs = mysqli_query($conn, $sql);

    foreach ($subs as $sub)
        return $sub['id'];
}

function add_goods($name, $price, $img_path, $id_sub, $descr)
{
    global $conn;

    $id_subS = get_subCategory_by_name($id_sub);

    $sql = "INSERT INTO `goods`(`name`, `price`, `image`,  `descr`, `category`) VALUES ('$name', '$price', 'hello', '$descr', $id_subS)";
    $result = mysqli_query($conn, $sql);

    $last = get_last_good();
    $last_path = "img/" . $last . "/";
    $last_path_img = $last_path . "1.jpeg";

    $img = "UPDATE goods SET image=\"$last_path_img\" WHERE id = $last";
    $result = mysqli_query($conn, $img);

    return $last_path;
}

function get_all_goodsss($id)
{
    global $conn;
    $sql = "SELECT * FROM goods WHERE id>=$id*10-9 AND id<=$id*10";
    $goods = mysqli_query($conn, $sql);
    return $goods;
}

function update_good($name, $price, $descr, $category, $id)
{
    global $conn;

    $cat_id = get_subCategory_by_name($category);

    $sql = "UPDATE goods SET `name` = '$name', `price` = $price, `descr` = '$descr',`category` = $cat_id WHERE id = $id";
    $result = mysqli_query($conn, $sql);
}

function add_good_to_user($id_good, $id_user, $quantity)
{
    global $conn;

    $sql = "INSERT INTO basket(id_user, id_goods, quantity) VALUES ($id_good, $id_user, $quantity)";
    $result = mysqli_query($conn, $sql);
}

function get_user_goods($id_user)
{
    global $conn;
    $sql = "SELECT * FROM basket WHERE id_user = '$id_user'";
    $result = mysqli_query($conn, $sql);

    return $result;
}

function delete_from_basket($id)
{
    global $conn;
    $sql = "DELETE FROM basket WHERE id = $id";
    $result = mysqli_query($conn, $sql);

}

function create_order($id_user, $id_good, $price, $firstname, $secondname, $email, $adress)
{
    global $conn;

    $sql = "INSERT INTO orders(id_user, id_good, price, firstname, secondname, email, adress) VALUES ('$id_user', '$id_good', '$price', '$firstname', '$secondname', '$email', '$adress')";
    $result = mysqli_query($conn, $sql);
}

function delete_from_orders($id)
{
    global $conn;
    $sql = "DELETE FROM basket WHERE id_user = $id";
    $result = mysqli_query($conn, $sql);

}

function get_orders($id_user)
{
    global $conn;
    $sql = "SELECT * FROM orders WHERE id_user = '$id_user'";
    $result = mysqli_query($conn, $sql);

    return $result;
}

function add_feedback($name, $textfeed, $id_goods)
{
    global $conn;
    $sql = "INSERT INTO feedback(name,textfeed,id_goods) VALUES('$name', '$textfeed', '$id_goods') ";
    $result = mysqli_query($conn, $sql);

}

function get_feedback($id_goods)
{
    global $conn;
    $sql = "SELECT * FROM feedback WHERE id_goods=$id_goods";
    $result = mysqli_query($conn, $sql);

    return $result;
}

function delete_good($id)
{
    global $conn;
    $sql = "DELETE FROM goods WHERE id = $id";
    $result = mysqli_query($conn, $sql);

}

function delete_feedback($id)
{
    global $conn;
    $sql = "DELETE FROM feedback WHERE id = $id";
    $result = mysqli_query($conn, $sql);

}

// Check connection
if (!$conn) {
    die("Connection failed: " . mysqli_connect_error());
}
