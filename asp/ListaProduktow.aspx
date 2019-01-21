<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master" CodeFile="ListaProduktow.aspx.cs" Inherits="ListaProduktow" %>


<asp:Content ID="Content1" ContentPlaceHolderID="HeadContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
   <p>
      Kategoria produktu:
      <asp:DropDownList ID="kategorieProduktow" runat="server" AutoPostBack="True" 
         DataSourceID="kategorieLinqDataSource" DataTextField="Name" 
         DataValueField="AuthorID" 
         onselectedindexchanged="authorsDropDownList_SelectedIndexChanged">
      </asp:DropDownList>
      <asp:LinqDataSource ID="kategorieLinqDataSource" runat="server" 
         onselecting="authorsLinqDataSource_Selecting">
      </asp:LinqDataSource>
      <asp:GridView ID="laptopyGridView" runat="server" AllowPaging="True" 
         AllowSorting="True" AutoGenerateColumns="False" 
         DataSourceID="laptopyLinqDataSource" PageSize="4" Width="580px">
         <Columns>
            <asp:BoundField DataField="ID" HeaderText="ID" SortExpression="ID" />
            <asp:BoundField DataField="Nazwa" HeaderText="Nazwa" SortExpression="Nazwa" />
            <asp:BoundField DataField="Cena" HeaderText="Cena" 
               SortExpression="Cena" />
            <asp:BoundField DataField="System" HeaderText="System operacyjny" 
               SortExpression="System" />
         </Columns>
      </asp:GridView>
      <asp:LinqDataSource ID="laptopyLinqDataSource" runat="server" 
         onselecting="titlesLinqDataSource_Selecting">
      </asp:LinqDataSource>
   </p>

    <form id="form1" runat="server">
    <div class="container">
    <div class="row">
        <div class="col-25">

    <!-- 
    <div class="row"> -->
    <!--Dodaj do koszyka --> 
    <asp:Button ID="btnKoszyk" runat="Server" CssClass="submit_form_main" Text="Dodaj do koszyka" /><!--OnClick="ActivateServerSideEvent" -->
    </div> 
    
    </div>
    </form>
    <asp:HyperLink ID="podsumowanieLink" runat="server" 
          NavigateUrl="~/Koszyk.aspx" Visible="false">Podsumowanie zamówienia</asp:HyperLink><br />
    <p>
          <asp:Label ID="stanKoszyka" runat="server" Visible="False">Stan koszyka:</asp:Label>
       </p>
</asp:Content>
