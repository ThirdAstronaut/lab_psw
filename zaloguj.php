<?php

	session_start();

	if ((!isset($_POST['login'])) || (!isset($_POST['haslo'])))
	{
		header('Location: logowanie.php');
		exit();
	}

				if (!empty($_POST['login']) && !empty($_POST['haslo'])) {
					$_SESSION['user'] = $_POST['login'];
					$_SESSION['zalogowany'] = true;

					unset($_SESSION['blad']);

					header('Location: index.php');
				}
				else {
					$_SESSION['blad'] = '<span style="color:red">Nieprawidłowy login lub hasło!</span>';

					header('Location: logowanie.php');
				}


?>
