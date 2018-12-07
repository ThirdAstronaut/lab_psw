<?php include 'naglowek.php'; ?>
    <aside class="telephone">
        <h3>Telefon: </h3>
        <p>Zadzwoń - 123-345-567</p>

    </aside>
    <h1>Dodatkowe informacje</h1>
    <div class="form_style">
        <form method="post" action="index.html">
            <div class="row">
                <label>Od kiedy nas znasz?

                    <input type="month" name="how_long"> (Data typu Miesiąc Rok)

                </label>
            </div>
            <div class="row">
                <label>Ile masz wzrostu w metrach?

                    <input type="text" id="height" onchange="location.reload()">
                    <p id="your_height" style="display: inline"></p>

                </label>
            </div>
            <div class="row">
                <style type="text/css">
                    label {
                        color: rgb(62, 138, 46);
                        font-size: 12pt;
                    }
                </style>
                <label style="color:rgb(42, 125, 209); font-size:10pt;">Wybierz swój ulubiony kolor laptopa

                    <input type="color" autofocus> (Heksadecymalny kod jak #FFFFFF)

                </label>
            </div>
            <div class="row">
                <label>Ile komputerów masz?

                    <input type="range" name="how_long" min="0" max="4" value="2"> (Liczba komputerów od 0 do 4 -
                    przykro
                    nam, że tylko tyle)
                </label>
            </div>
            <div class="row">
                <label>Napisz nam coś ciekawego o sobie
                    <br>
                    <textarea name="msg_content" minlength="10" maxlength="200" placeholder="Coś o sobie" rows="4" cols="36"></textarea>
                    (Ciąg alfanumeryczny o min. liczbie znaków - 10, a max. - 200)
                </label>
            </div>
            <div class="row">
                <label>Znajdź swoją markę
                    <input type="search" name="search-laptop" maxlength="50" placeholder="Lenovo"> (Ciąg alfanumeryczny
                    o
                    maksymalnej długości 50 znaków)
                </label>
            </div>
            <div class="row">
                <label>Podaj nam URL strony, którą najbardziej lubisz
                    <input type="url" name="url-website" placeholder="http://example.com" size="20" value="www.z-kom.pl"
                        disabled="disabled"> (Ciąg
                    zaczynający się od http://)
                </label>
            </div>
            <div class="row">
                <input type="submit" value="Wyślij">
                <input type="reset" value="Reset">
            </div>

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
        var height_input = document.getElementById("height").value
        var height = parseFloat(height_input)
        document.writeln(height)
        var result = ''
        switch (true) {
            case height < 1.5:
                result = 'Masz poniżej 1.5m';
                break;
            case height >= 1.5 && height <= 2:
                result = 'masz pomiędzy 1.5, a 2 metry'
                break;
            case height >= 2:
                result = 'masz ponad 2m';
                break;
        }
        document.getElementById("your_height").innerHTML = result;
    </script>
</body>

</html>
