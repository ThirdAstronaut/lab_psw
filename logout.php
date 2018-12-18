<?php

	session_start();
	if(isset($_SESSION['zalogowany'])){
		unset($_SESSION['zalogowany']);
		if(isset($_COOKIE[session_name()])){
			setcookie(session_name(), '', time() - 3600);
		}
	}
	session_regenerate_id();
	session_destroy();
	header('Location: index.php');

?>
