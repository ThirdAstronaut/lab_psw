<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Koszyk.aspx.cs" Inherits="Koszyk" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Koszyk</title>
     <link rel="stylesheet" type="text/css" href="index_style.css"/>
</head>
<body>
<asp:HyperLink ID="glownaLink" runat="server" 
          NavigateUrl="~/Glowna.aspx" Visible="true">Strona główna</asp:HyperLink><br />
    <asp:HyperLink ID="aboutLink" runat="server" 
          NavigateUrl="~/About.aspx" Visible="true">O nas</asp:HyperLink><br />
    <asp:HyperLink ID="formLink" runat="server" 
          NavigateUrl="~/Form.aspx" Visible="true">Formularz</asp:HyperLink><br />
    <asp:HyperLink ID="listaProdLink" runat="server" 
          NavigateUrl="~/ListaProduktow.aspx" Visible="true">Lista produktów</asp:HyperLink><br />
    <asp:HyperLink ID="koszykLink" runat="server" 
          NavigateUrl="~/Koszyk.aspx" Visible="true">Koszyk</asp:HyperLink><br />
    <form id="form1"  runat="server">
    <div class="container">
    <div class="row">
        <div class="col-25">Forma dostawy:</div>
        <div class="col-75">
    <asp:RadioButtonList ID="formaDostawy" runat="Server">
                            <asp:ListItem Text="Kurier"  Value="kurier"></asp:ListItem>
                            <asp:ListItem Text="Poczta" Value="poczta"></asp:ListItem>
                            <asp:ListItem Text="Odbiór osobisty" Value="osobiscie"></asp:ListItem>
                        </asp:RadioButtonList> </div>
    </div>
    <div class="row">
        <div class="col-25">
    Zawartość koszyka: </div>
    <!-- TODO info że pusty albo lista produktów -->
    </div>

    <h2>Podsumowanie zamówienia:</h2>
    <div class="row">
        <div class="col-25">Łączna cena produktów: </div>
          <div class="col-75"><asp:Label ID="cenaProduktow" runat="server" Visible="False"></asp:Label></div>
    </div>
    <div class="row">
        <div class="col-25">Łączna wartość zamówienia: </div>
          <div class="col-75"><asp:Label ID="cenaZamowienia" runat="server" Visible="False"></asp:Label></div>
    </div>
    <asp:Button ID="btnZamowienie" CssClass="submit_form_main" runat="Server" Text="Złóż zamówienie" OnClick="ActivateServerSideEvent" />
    </div>
    </form>
</body>
</html>
