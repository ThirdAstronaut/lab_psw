<!DOCTYPE html>
<html lang="pl-PL">

<head>
    <meta charset="utf-8">
    <meta name="description" content="Sklep internetowy sprzedający części do komputerów i składający spersonalizowane zestawy kompterowe.">
    <meta name="keywords" content="z-kom, zkom, z_kom, z kom, komputer, sklep, internet, sklep internetowy, zakupy sprzętu, części komputerowe, części do komputera, karta graficzna, dysk, pamięć RAM, płyta główna, jaki komputer kupić, najtańszy sklep komputerowy, składnie komputera, zestawy komputerowe">
    <meta name="author" content="Rafał Lechowicz, Jan Żyrek">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="styles/index_style.css">
    <script src="focusBlur.js"></script>
    <!--    <script>
        function showNameHint(){
document.getElementById("first_name_hint").innerHTML = "(Ciąg znaków - max.30)";
}

function hideNameHint() {
document.getElementById("first_name_hint").innerHTML = "";
}
</script>-->
    <title>Formularz kontaktowy - Z-KOM</title>
</head>

<body>
    <header class="main_menu">
        <div style=" position: static;">
            <p><a href="index.html" class="logo">
                    <img src="images/computer_logo_resized.png" alt="Symbol komputera" class="align_left">
                </a>
                <h1 class="website_title">Z-KOM</h1>
        </div>
        <p>
            <nav class="menu">Menu
                <ul>
                    <li><a class="wide" href="index.html">Strona główna</a></li>
                    <li><a class="wide" href="about.html">O firmie</a></li>
                    <li><a class="wide" href="form.html">Formularz kontaktowy</a></li>
                    <li><a class="wide" href="form_extra.html">Formularz szczegółowy</a></li>
                    <li><a class="wide" href="information.html">Szczegółowe informacje</a></li>
                </ul>
            </nav>
    </header>
    <aside class="telephone">
        <h3>Telefon: </h3>
        <p>Zadzwoń - 123-345-567</p>

    </aside>
    <h1>Skontaktuj się z nami!</h1>
          <?php
      // define variables and set to empty values
      $nameErr = $emailErr = $surnameErr = $websiteErr = $regErr = $telErr = "";
      $name = $email = $telephone = $month = $surname = $reg = $topic = $tresc = "";
      // Dodatki w razie nauki preg_match i preg_ - chyba trzeba dodać
      preg_match('/^[0-9]{9,11}$/',$telephone,$agree);
      preg_match("/[A-Za-z0-9]{30,}/", $name, $agreeName);
      preg_match("/[A-Za-z0-9]{50,}/", $surname, $agreeSurname);

      $filled = true;

      if ($_SERVER["REQUEST_METHOD"] == "POST") {
        if (empty($_POST["first_name_input"])) {
          $nameErr = "Name is required";
          $filled = false;
        } else {
          $name = test_input($_POST["first_name_input"]);
        }

        if (empty($_POST["email"])) {
          $emailErr = "Email is required";
          $filled = false;
        } else {
          $email = test_input($_POST["email"]);
        }

        if (empty($_POST["surname"])) {
          $surnameErr = "";
        } else {
          $surname = test_input($_POST["surname"]);
        }

        if (empty($_POST["month_of_birth"])) {
          $month = "";
        } else {
          $month = test_input($_POST["month_of_birth"]);
        }

        if (empty($_POST["telephone"])) {
          $telephone = "";
        } elseif (count($agree)<1) {
          $telErr = "Wrong telephone number";
          $filled = false;
        }
         else {
          $telephone = test_input($_POST["telephone"]);
        }

        if (empty($_POST["email_topic"])) {
          $topic = "";
        } else {
          $topic = test_input($_POST["email_topic"]);
        }

        if (empty($_POST["tresc_wiadomosci"])) {
          $tresc = "";
        } else {
          $tresc = test_input($_POST["tresc_wiadomosci"]);
        }

        if (empty($_POST["terms"])) {
          $regErr = "Tick the terms is required";
          $filled = false;
        } else {
          $reg = test_input($_POST["terms"]);
        }
      }

      function test_input($data) {
        $data = trim($data);
        $data = stripslashes($data);
        $data = htmlspecialchars($data);
        return $data;
      }
      ?>
      <p><span class="error">* required field</span></p>
    <form method="post" action="<?php echo htmlspecialchars($_SERVER["PHP_SELF"]);?>" id="contact_form">
        <p>
            <label class="form_main" onmouseover="showNameHint()" onmouseout="hideNameHint()" for="first_name_input">Imie</label>
            <input type="text" id="first_name_input" name="first_name_input" size="30" maxlength="30" autofocus
                autocomplete="name"><span class="error">* <?php echo $nameErr;?></span> <span id="first_name_hint"></span>
        </p>
        <p>
            <label class="form_main" for="last_name">Nazwisko</label>
            <input type="text" name="surname" id="last_name" size="30" maxlength="50" required autocomplete="family-name"><span class="error">* <?php echo $surnameErr;?></span>
            <span id="last_name_hint"></span>
        </p>
        <p>
            <label class="form_main" for="month_of_birth">Miesiąc urodzin
                <input list="month_of_birth" name="month_of_birth" id="month_of_birth">
                <datalist id="month_of_birth">
                    <option value="1">
                    <option value="2">
                    <option value="3">
                    <option value="4">
                    <option value="5">
                    <option value="6">
                    <option value="7">
                    <option value="8">
                    <option value="9">
                    <option value="10">
                    <option value="11">
                    <option value="12">
                </datalist>
                <span id="month_of_birth_hint"></span>
        </p>
        <p>
            <label class="form_main" for="email">Email</label>

            <input type="email" name="email" id="email" size="30" maxlength="60" required autocomplete="email"><span class="error">* <?php echo $emailErr;?></span><span id="email_hint"></span>
        </p>
        <p>
            <label class="form_main" for="telephone">Telefon</label>
            <input type="tel" name="telephone" id="telephone" pattern="[\+]?[0-9]{9,11}" autocomplete="tel"><span id="telephone_hint"></span>
        </p>
        <label class="form_main" for="email_topic">Temat wiadomości</label>
        <select id="email_topic" name="email_topic">
            <optgroup label="Produkty">
                <option value="zakupy">Zakupy</option>
                <option>Rabaty</option>
                <option>Pomoc w wyborze sprzętu</option>
                <option>Reklamacja</option>
            </optgroup>
            <optgroup label="Inne">
                <option>Pomoc techniczna</option>
                <option>Skargi i uwagi</option>
                <option>Inne</option>
            </optgroup>
        </select>
        <span id="email_topic_hint"></span>
        <br>
        <textarea class="text_main" name="tresc_wiadomosci" id="msg_content" minlength="10" maxlength="200" placeholder="Treść wiadomości" rows="4"
            cols="36"></textarea>
        <span id="msg_content_hint"></span>

        <br> <br>
        <div>
            <a href="">Regulamin</a>
            <input type="checkbox" name="terms" value="terms_accepted" id="terms_checkbox">
            <label for="terms_checkbox">Zapoznałem się z regulaminem serwisu</label>
            <span class="error">* <?php echo $regErr;?></span>
        </div>
        <input class="submit_form_main" type="submit" value="Wyślij">
        <input class="reset_form_main" type="reset" value="Reset">
    </form>
    <br>

    <?php
    function getRealIpAddr()
    {
        if (!empty($_SERVER['HTTP_CLIENT_IP']))   //check ip from share internet
        {
          $ip=$_SERVER['HTTP_CLIENT_IP'];
        }
        elseif (!empty($_SERVER['HTTP_X_FORWARDED_FOR']))   //to check ip is pass from proxy
        {
          $ip=$_SERVER['HTTP_X_FORWARDED_FOR'];
        }
        else
        {
          $ip=$_SERVER['REMOTE_ADDR'];
        }
        return $ip;
    }
    if ($filled) {
      echo "<h2>Your Input:</h2>Imię: ";
      echo $name;
      echo "<br>";
      // RODO surname
      function words_to_stars($text) {
          $replace_word = preg_replace('/[^a-zA-Z0-9\']/',"Nazwisko: ",substr($text,0,1));
          $replace_word .= str_repeat('*', strlen($text)-2);
          $replace_word .= substr($text,strlen($text)-1,1);
          return $replace_word;
      }
      echo words_to_stars($surname);
      //echo $surname;
      echo "<br>Miesiąc urodzin: ";
      echo $month;
      echo "<br>Email: ";
      echo $email;
      echo "<br>Nr telefonu: ";
      echo $telephone;
      echo "<br>Temat: ";
      echo $topic;
      echo "<br>Tresc wiadomości: ";
      echo $tresc;
      echo "<br>Regulamin: ";
      echo $reg;
      echo "<br>IP Address: ";
      echo getRealIpAddr();

      // Finding gmail mails
      preg_match("/\bgmail\b/i",$email,$matches);
      $arr_length = count($matches);
      for($i=0;$i<$arr_length;$i++) {
        if ($matches[$i] == "gmail") {
          echo "<h2>It's nice that you use gmail.com post!</h2>";
        }
      }
    }
    else {
      echo "<h2>You can't get input - data is required</h2>";
    };
    ?>
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
</body>


</html>
