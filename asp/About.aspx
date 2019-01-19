<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="About.aspx.cs" Inherits="_Default" %>

<asp:Content ID="HeaderContent" runat="server" ContentPlaceHolderID="HeadContent">
</asp:Content>
<asp:Content ID="BodyContent" runat="server" ContentPlaceHolderID="MainContent">
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
</asp:Content>

