<?php
include 'db_connection.php';
/*$lifetime = 600;
setcookie(session_name(), session_id(), $lifetime);
session_start();
*/
//echo session_id();
session_start([
	'cookie_lifetime' => 60*60,
]);

if ((!isset($_POST['login'])) || (!isset($_POST['haslo']))) {
    header('Location: logowanie.php');
    exit();
}

if (!($db)) {
    die(mysqli_error($db));
}
$query = "SELECT count(*) FROM Users where login = '" . $_POST['login'] . "' and passwd = '" . $_POST['haslo'] . "'";
if (!($result = $db->query($query)))
    die(mysqli_error($db));
$row = mysqli_fetch_row($result);
mysqli_close($db);

if ($row[0] == 1) {
    $_SESSION['user']       = $_POST['login'];
    $_SESSION['zalogowany'] = true;
    
    unset($_SESSION['blad']);
    
    header('Location: index.php');
} else {
    $_SESSION['blad'] = '<span style="color:red">Nieprawidłowy login lub hasło!</span>';
    header('Location: logowanie.php');
}
?>