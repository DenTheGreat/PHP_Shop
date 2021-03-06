<?php
if (isset($_POST['adm-signup-submit'])) {

  require 'dbh.inc.php';

  $username = $_POST['uid'];
  $email = $_POST['mail'];
  $password = $_POST['pwd'];
  $passwordRepeat = $_POST['pwd-repeat'];
  $user_type = $_POST['user'];

  if (empty($username) || empty($email) || empty($password) || empty($passwordRepeat) || empty($user_type)) {
    header("Location: ../admin/create-user.php?error=emptyfields&uid=".$username."&mail=".$email);
    exit();
  }
  else if (!preg_match("/^[a-zA-Z0-9]*$/", $username) && !filter_var($email, FILTER_VALIDATE_EMAIL)) {
    header("Location: ../admin/create-user.php?error=invaliduidmail");
    exit();
  }

  else if (!preg_match("/^[a-zA-Z0-9]*$/", $username)) {
    header("Location: ../admin/create-user.php?error=invaliduid&mail=".$email);
    exit();
  }

  else if (!filter_var($email, FILTER_VALIDATE_EMAIL)) {
    header("Location: ../admin/create-user.php?error=invalidmail&uid=".$username);
    exit();
  }

  else if ($password !== $passwordRepeat) {
    header("Location: ../admin/create-user.php?error=passwordcheck&uid=".$username."&mail=".$email);
    exit();
  }
  else {

    
    $sql = "SELECT uidUsers FROM users WHERE uidUsers=?;";
    $stmt = mysqli_stmt_init($conn);

    if (!mysqli_stmt_prepare($stmt, $sql)) {

      header("Location: ../admin/create-user.php?error=sqlerror");
      exit();
    }
    else {

      mysqli_stmt_bind_param($stmt, "s", $username);

      mysqli_stmt_execute($stmt);

      mysqli_stmt_store_result($stmt);

      $resultCount = mysqli_stmt_num_rows($stmt);
      mysqli_stmt_close($stmt);

      if ($resultCount > 0) {
        header("Location: ../admin/create-user.php?error=usertaken&mail=".$email);
        exit();
      }
      else {

        if ($user_type == 'Admin') {
        
        $sql = "INSERT INTO users (uidUsers, emailUsers, pwdUsers, uidGrand, status) VALUES (?, ?, ?, ?, 10);";
      }
        else{
          $sql = "INSERT INTO users (uidUsers, emailUsers, pwdUsers, uidGrand, status) VALUES (?, ?, ?, ?, 1);";
        }

        $stmt = mysqli_stmt_init($conn);

        if (!mysqli_stmt_prepare($stmt, $sql)) {

          header("Location: ../admin/create-user.php?error=sqlerror");
          exit();
        }
        else {

          $hashedPwd = password_hash($password, PASSWORD_DEFAULT);

          mysqli_stmt_bind_param($stmt, "ssss", $username, $email, $hashedPwd, $user_type);
          mysqli_stmt_execute($stmt);

          header("Location: ../admin/create-user.php?signup=success");
          exit();

        }
      }
    }
  }

  mysqli_stmt_close($stmt);
  mysqli_close($conn);
}
else {

  header("Location: ../admin/create-user.php");
  exit();
}
