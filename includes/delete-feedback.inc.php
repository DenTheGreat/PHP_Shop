<?php
require 'dbh.inc.php';
delete_feedback($_GET['id']);
header("Location: ../index.php");
?>
