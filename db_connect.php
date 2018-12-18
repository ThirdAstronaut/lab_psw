<?php
$mysql_host     = 'localhost';
$mysql_user     = 'psw';
$mysql_password = 'psw';
$mysql_db       = 'phpmyadmin';
$db = mysqli_connect($mysql_host, $mysql_user, $mysql_password, $mysql_db) or die("Error " . mysqli_error($db));
?>