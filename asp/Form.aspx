<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Validation" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Formularz</title>
    <link rel="stylesheet" type="text/css" href="index_style.css">
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
       <h1>
           Skontaktuj się z nami!</h1>
    <asp:HyperLink ID="glownaLink" runat="server" 
          NavigateUrl="~/Glowna.aspx" Visible="False">Strona główna</asp:HyperLink><br />
    <asp:HyperLink ID="aboutLink" runat="server" 
          NavigateUrl="~/About.aspx" Visible="False">O nas</asp:HyperLink><br />
    <asp:HyperLink ID="formLink" runat="server" 
          NavigateUrl="~/Form.aspx" Visible="False">Formularz</asp:HyperLink>
        <p>
            *wymagane pole</p>
       <table class="style1">
           <tr>
             <td valign="top">
                 Imie:</td>
             <td valign="top">
                <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" 
                   ControlToValidate="nameTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać swoje imię" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "nameTextBox" ID="RegularExpressionValidatorName" ValidationExpression = "^[\s\S]{0,60}$" 
                   runat="server" ErrorMessage="max 60 znaków" ForeColor="Red"></asp:RegularExpressionValidator>
                   
             </td>
           </tr>
          <tr>
             <td valign="top">
                 Nazwisko:</td>
             <td valign="top">
                <asp:TextBox ID="surnameTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="surnameRequiredFieldValidator" runat="server" 
                   ControlToValidate="surnameTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać swoje nazwisko" ForeColor="Red"></asp:RequiredFieldValidator>
                  <asp:RegularExpressionValidator Display = "Dynamic" ControlToValidate = "surnameTextBox" ID="RegularExpressionValidatorSurname" ValidationExpression = "^[\s\S]{0,60}$" 
                   runat="server" ErrorMessage="max 60 znaków" ForeColor="Red"></asp:RegularExpressionValidator>
                   
             </td>
          </tr>
           <tr>
             <td valign="top">
                 Miesiąc urodzin:</td>
             <td valign="top">
                <asp:TextBox ID="monthTextBox" runat="server"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="monthRequiredFieldValidator" runat="server" 
                   ControlToValidate="monthTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać miesiąc urodzenia" ForeColor="Red"></asp:RequiredFieldValidator>
                   <asp:RangeValidator ID="RangeValidatorMonth" runat="server" Type="Integer" 
MinimumValue="1" MaximumValue="12" ControlToValidate="monthTextBox"  ErrorMessage="Miesiąc urodzenia musi być liczbą całkowitą od 1 do 12"
Display ="Dynamic" ForeColor="Red"/>
             </td>
           </tr>
          <tr>
             <td valign="top">
                E-mail:</td>
             <td valign="top">
                <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                &nbsp;e.g., email@domain.com<br />
                <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" 
                   ControlToValidate="emailTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać swój adres email" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" 
                   runat="server" ControlToValidate="emailTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać email zgodny z formatem " ForeColor="Red" 
                     ValidationExpression="^(?=.{1,60}$)[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$" 
                     BorderStyle="Double"></asp:RegularExpressionValidator>
             </td>
          </tr>
          <tr>
             <td valign="top">
                 Telefon:</td>
             <td valign="top">
                <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
                &nbsp;np. (+48)12345689<br />
                <asp:RequiredFieldValidator ID="phoneRequiredFieldValidator" runat="server" 
                   ControlToValidate="phoneTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać numer telefonu" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="phoneRegularExpressionValidator" 
                   runat="server" ControlToValidate="phoneTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać numer telefonu zgodny z formatem " ForeColor="Red" 
                   ValidationExpression="^(?=.{1,12}$)[0-9\-\(\)\/\+\s]*$"></asp:RegularExpressionValidator>
             </td>
          </tr>
           <tr>
             <td valign="top">
                 Treść wiadomości:</td>
             <td valign="top">
                <asp:TextBox ID="contentTextBox" runat="server" Width="200" Height="200" Rows="10" TextMode="MultiLine"></asp:TextBox>
                <br />
                <asp:RequiredFieldValidator ID="contentRequiredFieldValidator" runat="server" 
                   ControlToValidate="contentTextBox" Display="Dynamic" 
                   ErrorMessage="Proszę podać treść wiadomości" ForeColor="Red"></asp:RequiredFieldValidator>
             </td>
           </tr>
           <tr>
             <td valign="top">
                 Regulamin:</td>
             <td valign="top">
                <br />

               <asp:CustomValidator ID="CustomValidator1" runat="server" 
        ErrorMessage="Proszę zapoznać się z regulaminem" Display="Dynamic" ForeColor="Red"
        onservervalidate="CustomValidator1_ServerValidate"  ></asp:CustomValidator>
    <asp:CheckBox ID="termsCheckBox" runat="server" CausesValidation="true"  /> <!-- oncheckedchanged="Override_CheckedChanged" AutoPostBack="True"-->  

             </td>
           </tr>
       </table>
       <p>
          <asp:Button ID="submitButton" runat="server" Text="Submit" />
       </p>
       <p>
          <asp:Label ID="outputLabel" runat="server" Visible="False"></asp:Label>
       </p>
    </div>
    </form>
</body>
</html>
