<%@ Page Language="C#" AutoEventWireup="true" CodeFile="ListaProduktow.aspx.cs" Inherits="ListaProduktow" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lista Produktów</title>
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
    <form id="form1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-25">
    Kategoria produktu: </div>
    <div class="col-75"><asp:RadioButtonList ID="kategorieProduktow" CssClass="categories" runat="Server" AutoPostBack="true" OnSelectedIndexChanged="kategorieProduktow_SelectedIndexChanged"> 
                            <asp:ListItem Text="Laptopy" Value="laptopy"></asp:ListItem>
                            <asp:ListItem Text="Części" Value="czesci"></asp:ListItem>
                            <asp:ListItem Text="Akcesoria" Value="akcesoria"></asp:ListItem>
                        </asp:RadioButtonList></div>
    </div>

    <div class="row">
        <div class="col-25">Produkt:</div>
    <div class="col-75"><asp:CheckBoxList ID="laptopyList" CssClass="lists" runat="Server" Visible="false">
                            <asp:ListItem Text="HP Pavilion Power i5-8300H/8GB/240" Value="hp"></asp:ListItem>
                            <asp:ListItem Text="ASUS VivoBook R520UA i3-8130U/8GB/256SSD/Win10" Value="asus"></asp:ListItem>
                            <asp:ListItem Text="Lenovo Ideapad 330-15 i3-8130U/8GB/240/Win10 MX150" Value="lenovo"></asp:ListItem>
                            <asp:ListItem Text="Huawei MateBook D 15.6 i5-8250U/8GB/256GBSSD/Win10" Value="huawei"></asp:ListItem>
                        </asp:CheckBoxList></div>
    
    <div class="col-75"><asp:CheckBoxList ID="czesciList" CssClass="lists" runat="Server" Visible="false">
                            <asp:ListItem Text="Gigabyte GeForce GTX 1060 WindForce II OC 6GB GDDR5" Value="karta"></asp:ListItem>
                            <asp:ListItem Text="Patriot 8GB 3000MHz Viper 4 CL16 (2x4GB)" Value="ram"></asp:ListItem>
                            <asp:ListItem Text="AMD Ryzen 5 2600" Value="procesor"></asp:ListItem>
                            <asp:ListItem Text="Crucial 240GB 2,5 SATA SSD BX500" Value="dysk"></asp:ListItem>
                        </asp:CheckBoxList></div>

    <div class="col-75"><asp:CheckBoxList ID="akcesoriaList" CssClass="lists" runat="Server" Visible="false">
                            <asp:ListItem Text="Kingston 32GB DataTraveler 100 G3 (USB 3.0)" Value="pendrive"></asp:ListItem>
                            <asp:ListItem Text="Lenovo Optical Mouse M3803A (czarna)" Value="myszka"></asp:ListItem>
                            <asp:ListItem Text="Logitech MK270 Wireless Desktop" Value="klawiatura"></asp:ListItem>
                            <asp:ListItem Text="Micron 256GB 2,5 SSD M1100 3D NAND USB 3.0" Value="dyskPrzenosny"></asp:ListItem>
                        </asp:CheckBoxList></div>

    </div>
    <div class="row">
    <!--Dodaj do koszyka -->
    <asp:Button ID="btnKoszyk" runat="Server" CssClass="submit_form_main" Text="Dodaj do koszyka" OnClick="AddToCart" /><!--OnClick="ActivateServerSideEvent" -->
    </div>
    
    </div>
    </form>
    <asp:HyperLink ID="podsumowanieLink" runat="server" 
          NavigateUrl="~/Koszyk.aspx" Visible="false">Podsumowanie zamówienia</asp:HyperLink><br />
    <p>
          <asp:Label ID="stanKoszyka" runat="server" Visible="False">Stan koszyka:</asp:Label>
       </p>
</body>
</html>
