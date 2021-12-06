<?php
session_start();
require "includes/dbh.inc.php";
header('Cache-Control: max-age=900');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="description" content="Den's Great Online Store">
    <meta name=viewport content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" href="includes/style.css">
  </head>
  <body>
      <header>
      <div class="header-main">
      <!--  <a class="header-logo" href="index.php">
         <img src="img/logo.png">
        </a>-->
        <ul class="menu">
          <?php
                $categories = get_category();
                    foreach ($categories as $category): ?>
      <li><a ref="#"><?php echo $category["name"] ?></a>
       <ul class="submenu">
                    <?php $subs = get_subCategory($category["id"]);
                    foreach ($subs as $sub) : ?>
            <li><a href="list.php?id_cat=<?php echo $sub['id'] ?>">
              <?php echo $sub["name"] ?>
                </a></li>
                <?php endforeach ?>
        </ul>
      </li>
        <?php endforeach ?>

      <form method="POST" action="search.php" >
      <input type="search" placeholder="Пошук" name="title" required>
      <button type="submit">Знайти</button>
      </form>

    <?php
        if (!isset($_SESSION['id'])) {
          echo '
          <form action="includes/login.inc.php" method="post">
            <input type="text" name="mailuid" placeholder="E-mail/Username">
            <input type="password" name="pwd" placeholder="Password">
            <button type="submit" name="login-submit">Login</button>
            <a href="signup.php" class="header-login">Signup</a>
          </form>
           ';
        }
        else if ( $_SESSION['auth'] == true ) {
          echo '<div class="username">'.$_SESSION['uid'].'</div>';
        if($_SESSION['stat'] == 10){
        echo '<div class="username">(Admin)</div>
         <a href="adm.panel.php">Control</a>
        ';}
          echo '
          <form action="includes/logout.inc.php" method="post">
            <button type="submit" name="login-submit">Logout</button>
          </form>
            </div>';
        }
        ?>
      </div>
    </header>
    </body>
