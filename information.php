<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="utf-8">
    <meta name="description" content="Sklep internetowy sprzedający części do komputerów i składający spersonalizowane zestawy kompterowe.">
    <meta name="keywords" content="z-kom, zkom, z_kom, z kom, komputer, sklep, internet, sklep internetowy, zakupy sprzętu, części komputerowe, części do komputera, karta graficzna, dysk, pamięć RAM, płyta główna, jaki komputer kupić, najtańszy sklep komputerowy, składnie komputera, zestawy komputerowe">
    <meta name="author" content="Rafał Lechowicz, Jan Żyrek">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles/index_style.css">
    <title>Z-KOM - Centrum wiedzy</title>
    <script src="keysMousemoveScreen.js"></script>
    <style type="text/css">
        a {
            text-decoration: none;
        }

        a:hover {
            text-decoration: underline;
        }

        nav ul {
            display: none;
            list-style: none;
            margin: 0;
        }

        nav:hover ul {
            display: block;
        }

        .mark_li:hover {
            background-color: rgb(253, 227, 227);
        }

        .mark_li a:link {
            background-color: rgb(253, 227, 227);
        }

        nav ul li ul li {
            display: none;
            list-style: none;
        }

        nav ul li ul li:hover ul li {
            display: block;
        }

        nav ul li:hover ul li {
            display: block;
        }

        nav ul li ul li ul li {
            display: none;
            list-style: none;
        }

        body {
            background: #ebfaff url("images/website_under_construction.png") no-repeat fixed bottom;
            background-size: 60%
        }

        .nav_info {
            width: 100%;
            border-top: 3px dashed blue;
            padding-top: 10px;
        }

        .highlighted {
            background-color: yellow;
        }
    </style>
    <script type="text/javascript">
        <!--
        var firstNumber; // first string entered by user
        var number1; // first number to add
        var number2; // second number to add
        var year_of_birth; // sum of number1 and number2
        var d = new Date();
        var n = d.getFullYear();
        var hour = d.getHours();
        // read in first number from user as a string
        //  firstNumber = window.prompt("Podaj, ile masz lat: ");
        // convert numbers from strings to integers
        //  number1 = parseInt(firstNumber);
        //  year_of_birth = n - number1; // add the numbers
        if (hour < 12)
            document.writeln("<h1>Witamy o poranku! </h1>");
        else {
            hour = hour - 12;
            if (hour < 6) {
                document.writeln("<h1>Witamy po południu!</h1>");
            } else {
                document.writeln("<h1>Witamy wieczorem!</h1>");
            }
        }
        // display the results
        //  document.writeln("<h1>Urodziłeś/aś się w " + year_of_birth + "</h1>");
        // -->
        // variables used to interact with the i mg elements
        var die1Image;
        var die2Image;
        var die3Image;
        var die4Image;

        // register button listener and get the img elements
        function start() {
            var button = document.getElementById("rollButton");
            button.addEventListener("click", rollDice, false);
            die1Image = document.getElementById("die1");
            die2Image = document.getElementById("die2");
            die3Image = document.getElementById("die3");
            die4Image = document.getElementById("die4");
        }

        function rollDice() {
            setImage(die1Image);
            setImage(die2Image);
            setImage(die3Image);
            setImage(die4Image);
        }

        function setImage(dieImg) {
            var dieValue = Math.floor(1 + Math.random() * 6);
            dieImg.setAttribute("src", "./images/die" + dieValue + ".png");
            dieImg.setAttribute("alt", "die image with" + dieValue + " spot(s)");
        }
        window.addEventListener("load", start, false);
    </script>
    <script src="dom.js"></script>
</head>

<body onmousemove="showCoords(event)" onmouseout="clearCoor()">
    <header class="main_menu">
        <div style=" position: static;">
            <p><a href="index.html" class="logo">
                    <img src="images/computer_logo_resized.png" alt="Symbol komputera" class="align_left">
                </a>
                <p id="demo" class="align_right display_inline"></p>
                <h1 class="website_title">Z-KOM</h1>
                <div class="menu align_right display_inline">Czcionki
                    <ul>
                        <li>
                            <div class="cursor_pointer" onclick="changeFontStyle('Comic Sans MS')">Comic Sans MS</div>
                        </li>
                        <li>
                            <div class="cursor_pointer" onclick="changeFontStyle('Arial')">Arial</div>
                        </li>
                        <li>
                            <div class="cursor_pointer" onclick="changeFontStyle('Times New Roman')">Times New Roman</div>
                        </li>

                    </ul>
                </div>

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
    <br>

    <nav><span style="color:blue; font-size: 20pt;">Przeglądaj</span>
        <ul>
            <li>Laptopy
                <ul>
                    <li>
                        Do gier
                        <ul>
                            <li class="mark_li"><a href="https://szukamlapka.pl/ranking/laptopy-do-gier/do-3000-zl.html">Do
                                    3000zł - szukamlapka.pl</a></li>
                            <li class="mark_li"><a href="https://szukamlapka.pl/ranking/laptopy-do-gier/do-6000-zl.html">Do
                                    6000zł - szukamlapka.pl</a></li>
                        </ul>
                    </li>
                    <li class="mark_li"> <a href="https://szukamlapka.pl/laptopy/do-biura.html">Do biura -
                            szukamlapka.pl</a></li>
                    <li class="mark_li"> <a href="https://szukamlapka.pl/laptopy/do-internetu-i-filmow,dla-grafika.html">Do
                            multimediów - szukamlapka.pl</a></li>
                </ul>
            </li>
            <li>Komputery stacjonarne
                <ul>
                    <li class="mark_li"> <a href="https://www.morele.net/wiadomosc/ranking-komputerow-dla-graczy-2018-top-10-najlepszych-modeli/1942/">Do
                            gier - ranking top10 morele.net</a></li>
                    <li class="mark_li"> <a href="https://www.morele.net/wiadomosc/ranking-komputerow-do-biura-top-10-najlepszych-zestawow-komputerowych/5937/">Do
                            biura - ranking top10 morele.net</a></li>
                </ul>
            </li>
            <li>Konsole
                <ul>
                    <li class="mark_li"> <a href="https://www.morele.net/wiadomosc/wersje-xbox-one-jaka-wybrac-ktora-najlepsza-polecane-wersje/3595/">Xbox
                            One - morele.net</a></li>
                    <li class="mark_li"> <a href="https://www.morele.net/wiadomosc/playstation-4-jaka-wersje-wybrac-jaka-najlepsza-polecane-konsole/3601/">PlayStation
                            4 - morele.net</a></li>
                </ul>
            </li>
        </ul>

    </nav>
    <br>

    <div class="multicolumns">
        <p class="multi_text" onmousedown="mouseDown()" onmouseup="mouseUp()">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit.
            Vestibulum mattis maximus elementum. Ut in tellus metus.
            Vivamus efficitur tempor lorem, hendrerit auctor leo.
            Pellentesque tempor sem id tincidunt viverra. Duis ut condimentum mi, in porta libero.
            Sed maximus placerat quam id maximus. Interdum et malesuada fames ac ante ipsum primis in faucibus.
            Cras in fermentum neque. Interdum et malesuada fames ac ante ipsum primis in faucibus.
            Sed consectetur bibendum felis eu cursus. Phasellus pharetra mattis lorem. Phasellus vulputate tempor
            lectus a varius.
            Quisque volutpat nunc tellus, id aliquam felis finibus et.

        </p>
        <p class="multi_text" onmousedown="mouseDown()" onmouseup="mouseUp()">
            Sed diam felis, vestibulum eu enim eget, aliquam lacinia dui. Maecenas semper neque sed ullamcorper
            maximus.
            Nunc ut pharetra risus. Nam molestie vel augue eu mattis. Vivamus pretium convallis sem in rutrum.
            Nullam luctus dui mi, nec consequat dui pellentesque sed.
            Vivamus dictum est ac vehicula consequat. Nullam luctus bibendum nulla, ac elementum ante egestas at.
        </p>
        <p class="multi_text" onmousedown="mouseDown()" onmouseup="mouseUp()">
            Pellentesque nec mauris eget sapien vestibulum aliquet. Sed congue egestas lectus. Curabitur luctus urna
            vel tincidunt pellentesque.
            Nulla et tincidunt metus. Curabitur finibus commodo velit in fermentum. Curabitur vitae lorem non justo
            dictum porta.
            Praesent eu cursus justo, eget viverra justo. Praesent tincidunt sem at nisi iaculis porta. Integer at mi
            nisl.

        </p>
    </div>
    <img src="./images/die1.png" alt="die1" width="50" height="30">
    <img src="./images/die3.png" alt="die3" width="50" height="30">
    <img src="./images/die5.png" alt="die5" width="50" height="30">
    <form action="#" id="rollingDice">
        <input id="rollButton" type="button" value="Roll Dice">
    </form>
    <ol>
        <li><img id="die1" src="./images/blank.png" alt="die 1 image" width="50" height="30"></li>
        <li><img id="die2" src="./images/blank.png" alt="die 2 image" width="50" height="30"></li>
        <li><img id="die3" src="./images/blank.png" alt="die 3 image" width="50" height="30"></li>
        <li><img id="die4" src="./images/blank.png" alt="die 4 image" width="50" height="30"></li>
    </ol>
    <h1 id="bigheading" class="highlighted">
        [bigheading] DHTML Object Model</h1>
    <h3 id="smallheading">[smallheading] Element Functionality</h3>
    <p id="para1">[para1] The Document Object Model (DOM) allows for
        quick, dynamic access to all elements in an HTML5 document for
        manipulation with JavaScript.</p>
    <p id="para2">[para2] For more information, check out the
        "JavaScript and the DOM" section of Deitel's
        <a id="link" href="http://www.deitel.com/javascript">
            [link] JavaScript Resource Center.</a></p>
    <p id="para3">[para3] The buttons below demonstrate:(list)</p>
    <ul id="list">
        <li id="item1">[item1] getElementById and parentNode</li>
        <li id="item2">[item2] insertBefore and appendChild</li>
        <li id="item3">[item3] replaceChild and removeChild</li>
    </ul>
    <div id="nav" class="nav_info">
        <form action="#">
            <p><input type="text" id="gbi" value="bigheading">
                <input type="button" value="Get By id" id="byIdButton"></p>
            <p><input type="text" id="ins">
                <input type="button" value="Insert Before" id="insertButton"></p>
            <p><input type="text" id="append">
                <input type="button" value="Append Child" id="appendButton"></p>
            <p><input type="text" id="replace">
                <input type="button" value="Replace Current" id="replaceButton"></p>
            <p><input type="button" value="Remove Current" id="removeButton"></p>
            <p><input type="button" value="Get Parent" id="parentButton"></p>
        </form>
    </div>
    <footer>
        <p></p>
        <details>
            <hr>
            <p>Znajdź nas na portalach społecznościowych!</p>
            <div id="social_media_icons">
                <a href="http://www.facebook.com/">
                    <img id="facebook" class="icon" src="https://upload.wikimedia.org/wikipedia/commons/thumb/c/c2/F_icon.svg/2000px-F_icon.svg.png"
                        alt="Fanpage sklepu na facebooku" />
                </a>
                <a href="http://www.instagram.com/">
                    <img id="instagram" class="icon" src="images/Instagram_icon.png" alt="Fanpage sklepu na instagramie" />
                </a>
                <a href="http://www.twitter.com/">
                    <img id="twitter" class="icon" src="images/twitter_icon.png" alt="Fanpage sklepu na twitterze" />
                </a>
            </div>
            <summary>Copyright 2018</summary>
            <p>&copy;Copy rights reserved</p>
        </details>
    </footer>

    <script>
        function myFunction() {
            for (var i = 1; i < 4; i++) {
                var x = document.images.item(i);
                x.style.border = "3px dotted black";
            }
        }

        function styleRollButton() {
            var x = document.forms.namedItem("rollingDice");
            x.style.width = "100px";
            x.style.height = "50px";
            x.style.background = "royalblue";
            x.style.border = "3px dotted black";
        }
        window.addEventListener("load", myFunction, false);
        window.addEventListener("load", styleRollButton, false);
    </script>
</body>

</html>
