using System;

public partial class Validation : System.Web.UI.Page
{
   protected void Page_Load( object sender, EventArgs e )
   {
       dateCompare.ValueToCompare = DateTime.Now.ToString("d");

      if ( IsPostBack )
      {
         Validate();

         if ( IsValid )
         {
            string name = nameTextBox.Text;
            string surname = surnameTextBox.Text;
            string month = monthTextBox.Text;
            string email = emailTextBox.Text;
            string phone = phoneTextBox.Text;
            string content = contentTextBox.Text;
            string date = dateTextBox.Text;
         

            outputLabel.Text = "Dziękujemy za wypełnienie formularza<br/>" +
               "Otrzymaliśmy następujące informacje:<br/>";
            outputLabel.Text +=
               String.Format("Imie: {0}{1}Nazwisko: {4}{1}Miesiąc urodzin: {5}{1}E-mail: {2}{1}Telefon: {3}{1}Data zakupu: {7}{1}Treść: {6}{1}",
                  name, "<br/>", email, phone, surname, month, content, date);
            outputLabel.Visible = true; 
         } 
      } 
   }
}
 
