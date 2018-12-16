<!DOCTYPE html>
<html>
	<head>
		<meta charset = "utf-8">
		<style type="text/css">table, th, td {
  border: 1px solid black;
}
</style>
		<title>Diagnostic</title>
	</head>
	<body>
		<p>Sortuj według: 
			<form method="POST">
				<select name="orderBy">
					<option>ID</option>
					<option>login</option>
					<option>fname</option>
					<option>lname</option>
					<option>phone</option>
					<option>email</option>

				</select>

				<input type="submit">
			</form>
		</p>
		
		<h2>Baza danych:</h2>
	<?php

$mysql_host='localhost';
$mysql_user='psw';
$mysql_password='psw';
$mysql_db='phpmyadmin';
$db= mysqli_connect($mysql_host,$mysql_user,$mysql_password, $mysql_db);

	if(!($db))
		die("<p>Nie można połączyć się z bazą danych </p></body></html>");

	if(isset($_POST['orderBy']))
		$query = 'SELECT * FROM Users ORDER BY ' . mysqli_real_escape_string($db, $_POST['orderBy']) . ' ASC';
	else
		$query = 'SELECT * FROM Users';
		
	if(!($result = $db->query($query)))
	{
		print( "<p>Błąd zapytania!</p>" );
		die(mysqli_error($db)."</body></html>" );
	}
    mysqli_close( $db );
	
	echo '<table><tr><td>ID</td><td>Login</td><td>Hasło</td><td>Nazwisko</td><td>Imie</td><td>Email</td><td>Telefon</td></tr>';
    while ( $row = mysqli_fetch_row( $result ) )
    {
		echo '<tr>';
		foreach($row as $key => $value)
		{
			echo "<td>$value</td>";
		}
		echo "</tr>";
	}
	echo '</table>';
	?> 
	</body>
</html>

