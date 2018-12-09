<?php include 'themes.php';?>
<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="utf-8">
    <meta name="description" content="Sklep internetowy sprzedający części do komputerów i składający spersonalizowane zestawy kompterowe.">
    <meta name="keywords" content="z-kom, zkom, z_kom, z kom, komputer, sklep, internet, sklep internetowy, zakupy sprzętu, części komputerowe, części do komputera, karta graficzna, dysk, pamięć RAM, płyta główna, jaki komputer kupić, najtańszy sklep komputerowy, składnie komputera, zestawy komputerowe">
    <meta name="author" content="Rafał Lechowicz, Jan Żyrek">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles/<?php echo $styleChoice; ?>/index_style.css">
    <script>
        function submitButtonClicked(){
alert("Dziękujemy za przesłanie opini");
};

</script>
    <!--<script src="dom.js"></script>-->
    <script src="keysMousemoveScreen.js"></script>
    <title>Z-KOM - Internetowy sklep komputerowy</title>
</head>

<body>
    <header class="main_menu">
        <div style=" position: static;">
            <p><a href="index.html" class="logo">
                    <img src="images/computer_logo_resized.png" alt="Symbol komputera" class="align_left">
                </a>
                <h1 class="website_title" id="web_title"><a name="zkom">Z-KOM</a></h1>
             <!--   <div class="color_box_red align_right display_inline" onmouseover="changeBackgroundColor('red')"
                    onmouseout="resetToDefault()"></div>
                <div class="color_box_green align_right display_inline" onmouseover="changeBackgroundColor('#4CAF50')"
                    onmouseout="resetToDefault()"></div>
                <div class="color_box_blue align_right display_inline " onmouseover="changeBackgroundColor('blue')"
                    onmouseout="resetToDefault()"></div>
-->
        </div>
        <p>
            <nav class="menu">Menu
                <ul>
                    <li><a class="wide" href="index.php">Strona główna</a></li>
                    <li><a class="wide" href="about.php">O firmie</a></li>
                    <li><a class="wide" href="form.php">Formularz kontaktowy</a></li>
                    <li><a class="wide" href="form_extra.php">Formularz szczegółowy</a></li>
                    <li><a class="wide" href="information.php">Szczegółowe informacje</a></li>
                    <li><?php
        												session_start();

        												if (!isset($_SESSION['zalogowany']))
        												{
        														echo '<a class="wide" href="logowanie.php">Zaloguj się</a>';
        												}
        												else {
        														echo ' <a class="wide" href="logout.php">'."Witaj ".$_SESSION['user'].'[Wyloguj się!]</a>';
        												}
        								 		?></li>
                </ul>
            </nav>
    </header>
