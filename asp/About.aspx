<%@ Page Language="C#" AutoEventWireup="true" CodeFile="About.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html lang="pl-PL">

<head>
        <meta charset="UTF-8">
        <meta name="description" content="Sklep internetowy sprzedający części do komputerów i składający spersonalizowane zestawy kompterowe."/>
        <meta name="keywords" content="z-kom, zkom, z_kom, z kom, komputer, sklep, internet, sklep internetowy, zakupy sprzętu, części komputerowe, części do komputera, karta graficzna, dysk, pamięć RAM, płyta główna, jaki komputer kupić, najtańszy sklep komputerowy, składnie komputera, zestawy komputerowe"/>
        <meta name="author" content="Rafał Lechowicz, Jan Żyrek"/>
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
        <link rel="stylesheet" type="text/css" href="index_style.css"/>
        <title>Z-KOM - O nas</title>
</head>

<body>
        <header class="main_menu">
        <div style=" position: static;">
            <asp:HyperLink ID="HyperLink1" runat="server" 
          NavigateUrl="~/Glowna.aspx" Visible="true">
                    <img src="images/computer_logo_resized.png" alt="Symbol komputera" class="align_left display_inline"/>
                </asp:HyperLink><br />
                <h1 class="website_title display_inline" id="web_title"><a name="zkom">Z-KOM</a></h1>
        </div>
        <p>
            <asp:HyperLink ID="glownaLink" runat="server" 
          NavigateUrl="~/Glowna.aspx" Visible="true">Strona główna</asp:HyperLink><br />
    <asp:HyperLink ID="aboutLink" runat="server" 
          NavigateUrl="~/About.aspx" Visible="true">O nas</asp:HyperLink><br />
    <asp:HyperLink ID="formLink" runat="server" 
          NavigateUrl="~/Form.aspx" Visible="true">Formularz</asp:HyperLink>
    </header>
        <aside>
                <div class="telephone">
                        <h3>Telefon: </h3>
                        <p>Zadzwoń - 123-345-567</p>
                </div>
        </aside>
        <section class="flex-container">
                <section class="short_info hover flex" id="short_info_border">
                        <h1>O firmie</h1>
                        <p>Wrocław ul. Nyska 1/1
                                <br/>21-012 Wrocław</p>
                        <p>Zadzwoń - 123-345-567</p>
                        <a href="mailto:xyz@xyz.xyz">Napisz maila</a>
                </section>
                <section class="hover flex history">
                        <h1>Kim jesteśmy?</h1>
                        <p>Firma Z-KOM powstała w 2016 roku, od tego czasu nieustannie się rozwijamy i dziś śmiało
                                można powiedzieć,
                                że jesteśmy liderem rynku branży komputerowej w Polsce. Naszą misją jest dostarczania
                                jak
                                najlepszej jakości sprzętu dla naszych klientów, którzy chętnie do nas wracają.
                                Asortyment
                                sklepu jest nieustannie powiększany o sprzęt nowych marek.
                        </p>
                </section>
                <section class="find_us hover flex">
                        <h3>Gdzie nas znaleźć?</h3>
                        <p>
                                Nasz jedyny salon stacjonarny mieści się we Wrocławiu przy Nyskiej 1/1, natomiast w
                                niedalekiej przyszłości planujemy otworzenie
                                oddziału w Warszawie.
                        </p>
                        <mark> Aktualny postęp:
                                <meter value="0.6">60%</meter>
                        </mark>
                        <div id="interior_image">
                                <img class="bottom" src="images/wnetrze1.jpg" width="50%" height="50%" alt="wnetrze"/>
                                <img class="top" src="images/wnetrze2.jpg" width="50%" height="50%" alt="wnetrze"/>
                        </div>
                </section>
        </section>
        <footer>
                <p></p>
                <details>
                        <hr/>
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

