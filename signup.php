<?php
  require "header.php";
?>

    <main>
      <div class="wrapper-main">
        <section class="section-default">
          <h1>Реєстрація</h1>
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
          <form class="form-signup" action="includes/signup.inc.php" method="post">
            <?php

            if (!empty($_GET["uid"])) {
              echo '<input type="text" name="uid" placeholder="Логін" value="'.$_GET["uid"].'">';
            }
            else {
              echo '<input type="text" name="uid" placeholder="Логін">';
            }

            if (!empty($_GET["mail"])) {
              echo '<input type="text" name="mail" placeholder="E-mail" value="'.$_GET["mail"].'">';
            }
            else {
              echo '<input type="text" name="mail" placeholder="E-mail">';
            }
            ?>
            <input type="password" name="pwd" placeholder="Пароль">
            <input type="password" name="pwd-repeat" placeholder="Повторити пароль">
            <button type="submit" name="signup-submit">Зарєструватися</button>
          </form>
        </section>
      </div>
    </main>

<?php
  require "footer.php";
?>
