<?php
  require "header.php";
?>

    <main>
      <div class="wrapper-main">
        <section class="section-default">
          <?php if ( $_SESSION['auth'] == true and $_SESSION['stat'] == 10) { ?>
          <h1>Створення користувача</h1>
          <?php
          if (isset($_GET["error"])) {
            if ($_GET["error"] == "emptyfields") {
              echo '<p class="signuperror">Fill in all fields!</p>';
            }
            else if ($_GET["error"] == "invaliduidmail") {
              echo '<p class="signuperror">Invalid username and e-mail!</p>';
            }
            else if ($_GET["error"] == "invaliduid") {
              echo '<p class="signuperror">Invalid username!</p>';
            }
            else if ($_GET["error"] == "invalidmail") {
              echo '<p class="signuperror">Invalid e-mail!</p>';
            }
            else if ($_GET["error"] == "passwordcheck") {
              echo '<p class="signuperror">Your passwords do not match!</p>';
            }
            else if ($_GET["error"] == "usertaken") {
              echo '<p class="signuperror">Username is already taken!</p>';
            }
          }
          else if (isset($_GET["signup"])) {
            if ($_GET["signup"] == "success") {
              echo '<p class="signupsuccess">Signup successful!</p>';
            }
          }
          ?>
          <form class="form-signup" action="../includes/create-user.inc.php" method="post">
            <?php

            if (!empty($_GET["uid"])) {
              echo '<input type="text" name="uid" placeholder="Username" value="'.$_GET["uid"].'">';
            }
            else {
              echo '<input type="text" name="uid" placeholder="Username">';
            }

            if (!empty($_GET["mail"])) {
              echo '<input type="text" name="mail" placeholder="E-mail" value="'.$_GET["mail"].'">';
            }
            else {
              echo '<input type="text" name="mail" placeholder="E-mail">';
            }
            ?>
            <input type="password" name="pwd" placeholder="Password">
            <input type="password" name="pwd-repeat" placeholder="Repeat password">
            <label>Тип користувача</label>
            <select name="user" id="user" class="grand-select">
              <option value=""></option>
              <option value="Admin">Admin</option>
              <option value="user">User</option>
            </select>
            <button type="submit" name="adm-signup-submit">Створити</button>
          </form>
          <?php } 
          /*<p>Admin</p><input type="radio" name="user" value="Admin">
                <input type="hidden" name="status" value="10"></input>
              <p>User</p><input type="radio" name="user" value="user">
                <input type="hidden" name="status" value="1"></input>*/?>
        </section>
      </div>
    </main>

<?php
  require "footer.php";
