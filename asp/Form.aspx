<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Form.aspx.cs" Inherits="Validation" %>

<%@ Register assembly="AjaxControlToolkit" namespace="AjaxControlToolkit" tagprefix="asp" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>Formularz</title>
    <link rel="stylesheet" type="text/css" href="index_style.css" />
    <style type="text/css">
        
    </style>
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
          NavigateUrl="~/Form.aspx" Visible="true">Formularz</asp:HyperLink><br />
	<asp:HyperLink ID="listaProdLink" runat="server" 
          NavigateUrl="~/ListaProduktow.aspx" Visible="true">Lista produktów</asp:HyperLink><br />
    <asp:HyperLink ID="koszykLink" runat="server" 
          NavigateUrl="~/Koszyk.aspx" Visible="true">Koszyk</asp:HyperLink>
    </header>
    <h1>
        Skontaktuj się z nami!</h1>
    <form id="form1" runat="server">
    <div>
        <h3><asp:ToolkitScriptManager ID="ToolkitScriptManager1" runat="server">
          </asp:ToolkitScriptManager>
            *wymagane pola</h3>
             <asp:TabContainer ID="TabContainer1" runat="server" ActiveTabIndex="0" 
          Width="450px">
          <asp:TabPanel ID="TabPanel1" runat="server" HeaderText="Dane personalne">
             <ContentTemplate>
        <table class="formTable">
            <tr>
                <td valign="top">
                    *Imie:
                </td>
                <td valign="top">
                    <asp:TextBox ID="nameTextBox" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="nameRequiredFieldValidator" runat="server" ControlToValidate="nameTextBox"
                        Display="None" ErrorMessage="Proszę podać swoje imię" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display="None" ControlToValidate="nameTextBox"
                        ID="RegularExpressionValidatorName" ValidationExpression="^[\s\S]{0,60}$" runat="server"
                        ErrorMessage="max 60 znaków" ForeColor="Red"></asp:RegularExpressionValidator>
                         <asp:ValidatorCalloutExtender ID="nameRequiredFieldValidator_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="nameRequiredFieldValidator">
                         </asp:ValidatorCalloutExtender>
                         <asp:ValidatorCalloutExtender ID="RegularExpressionValidatorName_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RegularExpressionValidatorName">
                         </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    *Nazwisko:
                </td>
                <td valign="top">
                    <asp:TextBox ID="surnameTextBox" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="surnameRequiredFieldValidator" runat="server" ControlToValidate="surnameTextBox"
                        Display="None" ErrorMessage="Proszę podać swoje nazwisko" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator Display="None" ControlToValidate="surnameTextBox"
                        ID="RegularExpressionValidatorSurname" ValidationExpression="^[\s\S]{0,60}$"
                        runat="server" ErrorMessage="max 60 znaków" ForeColor="Red"></asp:RegularExpressionValidator>
                         <asp:ValidatorCalloutExtender ID="RegularExpressionValidatorSurname_ValidatorCalloutExtender" 
                            runat="server" Enabled="True" TargetControlID="RegularExpressionValidatorSurname">
                         </asp:ValidatorCalloutExtender>
                         <asp:ValidatorCalloutExtender ID="surnameRequiredFieldValidator_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="surnameRequiredFieldValidator">
                         </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    *Miesiąc urodzin:
                </td>
                <td valign="top">
                    <asp:TextBox ID="monthTextBox" runat="server"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="monthRequiredFieldValidator" runat="server" ControlToValidate="monthTextBox"
                        Display="None" ErrorMessage="Proszę podać miesiąc urodzenia" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RangeValidator ID="RangeValidatorMonth" runat="server" Type="Integer" MinimumValue="1"
                        MaximumValue="12" ControlToValidate="monthTextBox" ErrorMessage="Miesiąc urodzenia musi być liczbą całkowitą od 1 do 12"
                        Display="None" ForeColor="Red" />
                        <asp:ValidatorCalloutExtender ID="monthRequiredFieldValidator_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="monthRequiredFieldValidator">
                         </asp:ValidatorCalloutExtender>
                         <asp:ValidatorCalloutExtender ID="RangeValidatorMonth_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="RangeValidatorMonth">
                         </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    *E-mail:
                </td>
                <td valign="top">
                    <asp:TextBox ID="emailTextBox" runat="server"></asp:TextBox>
                    &nbsp;np. email@abc.pl<br />
                    <asp:RequiredFieldValidator ID="emailRequiredFieldValidator" runat="server" ControlToValidate="emailTextBox"
                        Display="None" ErrorMessage="Proszę podać swój adres email" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="emailRegularExpressionValidator" runat="server"
                        ControlToValidate="emailTextBox" Display="None" ErrorMessage="Proszę podać email zgodny z formatem "
                        ForeColor="Red" ValidationExpression="^(?=.{1,60}$)[_a-z0-9-]+(\.[_a-z0-9-]+)*@[a-z0-9-]+(\.[a-z0-9-]+)*(\.[a-z]{2,4})$"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="emailRequiredFieldValidator_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="emailRequiredFieldValidator">
                         </asp:ValidatorCalloutExtender>
                         <asp:ValidatorCalloutExtender ID="emailRegularExpressionValidator_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="emailRegularExpressionValidator">
                         </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    *Telefon:
                </td>
                <td valign="top">
                    <asp:TextBox ID="phoneTextBox" runat="server"></asp:TextBox>
                    &nbsp;np. (+48)12345689<br />
                    <asp:RequiredFieldValidator ID="phoneRequiredFieldValidator" runat="server" ControlToValidate="phoneTextBox"
                        Display="None" ErrorMessage="Proszę podać numer telefonu" ForeColor="Red"></asp:RequiredFieldValidator>
                    <asp:RegularExpressionValidator ID="phoneRegularExpressionValidator" runat="server"
                        ControlToValidate="phoneTextBox" Display="None" ErrorMessage="Proszę podać numer telefonu zgodny z formatem "
                        ForeColor="Red" ValidationExpression="^(?=.{1,12}$)[0-9\-\(\)\/\+\s]*$"></asp:RegularExpressionValidator>
                        <asp:ValidatorCalloutExtender ID="phoneRequiredFieldValidator_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="phoneRequiredFieldValidator">
                         </asp:ValidatorCalloutExtender>
                         <asp:ValidatorCalloutExtender ID="phoneRegularExpressionValidator_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="phoneRegularExpressionValidator">
                         </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            </table>
              </ContentTemplate>
          </asp:TabPanel>
          <asp:TabPanel ID="TabPanel2" runat="server" HeaderText="Wiadomość">
             <ContentTemplate>
                <table class="formTable">
            <tr>
                <td valign="top">
                    <asp:Label ID="dateLabel" Text="  Data zakupu:" AssociatedControlID="dateTextBox"
                        runat="server" />
                </td>
                <td valign="top">
                    <asp:TextBox ID="dateTextBox" runat="server" />
                    <asp:CompareValidator ID="dateCompare" ErrorMessage="Data musi być wcześniejsza lub równa dzisiejszej" Display="None"
                        ForeColor="Red" ControlToValidate="dateTextBox" Type="Date" Operator="LessThanEqual"
                        runat="server" />
                        <asp:ValidatorCalloutExtender ID="dateCompare_ValidatorCalloutExtende" 
                            runat="server" Enabled="True" TargetControlID="dateCompare">
                         </asp:ValidatorCalloutExtender>
                </td>
            </tr>
            <tr>
                <td valign="top">
                    *Treść wiadomości:
                </td>
                <td valign="top">
                    <asp:TextBox ID="contentTextBox" runat="server" Width="200" Height="150" Rows="10"
                        TextMode="MultiLine"></asp:TextBox>
                    <br />
                    <asp:RequiredFieldValidator ID="contentRequiredFieldValidator" runat="server" ControlToValidate="contentTextBox"
                        Display="None" ErrorMessage="Proszę podać treść wiadomości" ForeColor="Red"></asp:RequiredFieldValidator>
                        <asp:ValidatorCalloutExtender ID="contentRequiredFieldValidator_ValidatorCalloutExtend" 
                            runat="server" Enabled="True" TargetControlID="contentRequiredFieldValidator">
                         </asp:ValidatorCalloutExtender>
                </td>
            </tr>
        </table>
        </ContentTemplate>
         </asp:TabPanel>
       </asp:TabContainer>
       <asp:UpdatePanel ID="UpdatePanel1" runat="server">
          <ContentTemplate>
        <p>
            <asp:Button ID="submitButton" class="submit_form_main" runat="server" Text="Wyślij" />
        </p>
        <p>
            <asp:Label ID="outputLabel" runat="server" Visible="False"></asp:Label>
        </p>
         </ContentTemplate>
          <Triggers>
             <asp:AsyncPostBackTrigger ControlID="submitButton" EventName="Click" />
          </Triggers>
       </asp:UpdatePanel>
    </div>
    </form>
</body>
</html>
