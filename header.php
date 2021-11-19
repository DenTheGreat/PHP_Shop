<?php
session_start();
require "includes/dbh.inc.php";
header('Cache-Control: max-age=900');
?>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <meta name="description" content="This is an example of a meta description. This will often show up in search results.">
    <meta name=viewport content="width=device-width, initial-scale=1">
    <title></title>
    <link rel="stylesheet" href="style.css">
  </head>
  <body>
      <header>
      <nav class="nav-header-main">
        <a class="header-logo" href="index.php">
          <img src="img/logo.png">
        </a>
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
           <div class="search-input">
          <form method="POST" action="search.php" class="search-input">
      <input type="search" placeholder="Пошук" name="title" class="search" required>
      <button type="submit" class="searchButton" style="text-align: center;">Знайти</button>
      </form>
    </div>
      </nav>
 
      <div class="header-login">
  
        <?php
        if (!isset($_SESSION['id'])) {
          echo '<form action="includes/login.inc.php" method="post">
            <input type="text" name="mailuid" placeholder="E-mail/Username">
            <input type="password" name="pwd" placeholder="Password">
            <button type="submit" name="login-submit">Login</button>
          </form>
          <a href="signup.php" class="header-signup">Signup</a>';
        }
        else if ( $_SESSION['auth'] == true /*and $_SESSION['stat'] == 10*/) {
          echo '<strong><div class="user-name">'.$_SESSION['uid'].'</div></strong>';
        if($_SESSION['stat'] == 10){  echo '<div class="user-grand"> (Admin)</div>';}
         echo '<form action="adm.panel.php" method="post">
            <button type="submit" name="login-submit">Panel</button>
          </form>';
          echo '<form action="includes/logout.inc.php" method="post">
            <button type="submit" name="login-submit">Logout</button>
          </form>';
        }
        ?>
      </div>
    </header>

