<%@ Page Language="C#" AutoEventWireup="true" CodeFile="PotwierdzenieZamowienia.aspx.cs" Inherits="PodsumowanieZamowienia" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Potwierdzenie zamówienia</title>
     <link rel="stylesheet" type="text/css" href="index_style.css"/>
</head>
<body>
<h2>Dziękujemy za złożenie zamówienia. Jesteśmy zachwyceni faktem, iż dokonano zakupów w naszym sklepie! Łączna wartość zamówienia wynosi: </h2>
 <p>
          <asp:Label ID="cenaZamowienia" runat="server" Visible="False"></asp:Label>
       </p>
<h2>Zapraszamy do korzystania danej z naszych usług!</h2>
<asp:HyperLink ID="glownaLink" runat="server" 
          NavigateUrl="~/Glowna.aspx" Visible="true">Strona główna</asp:HyperLink><br />
    <asp:HyperLink ID="aboutLink" runat="server" 
          NavigateUrl="~/About.aspx" Visible="true">O nas</asp:HyperLink><br />
    <asp:HyperLink ID="formLink" runat="server" 
          NavigateUrl="~/Form.aspx" Visible="true">Formularz</asp:HyperLink><br />
    <asp:HyperLink ID="listaProdLink" runat="server" 
          NavigateUrl="~/ListaProduktow.aspx" Visible="true">Lista produktów</asp:HyperLink><br />
</body>
</html>
