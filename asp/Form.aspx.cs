using System;

public partial class Validation : System.Web.UI.Page
{
   protected void Page_Load( object sender, EventArgs e )
   {
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
            bool terms = termsCheckBox.Checked;

            outputLabel.Text = "Dziękujemy za wypełnienie formularza<br/>" +
               "Otrzymaliśmy następujące informacje:<br/>";
            outputLabel.Text +=
               String.Format("Imie: {0}{1}Nazwisko: {4}{1}Miesiąc urodzin: {5}{1}E-mail: {2}{1}Telefon: {3}{1}Treść: {6}{1}Regulamin: {7}{1}",
                  name, "<br/>", email, phone, surname, month, content, terms);
            outputLabel.Visible = true; 
         } 
      } 
   }

   protected void CustomValidator1_ServerValidate(object source, System.Web.UI.WebControls.ServerValidateEventArgs args)
   {

       args.IsValid = termsCheckBox.Checked;
   }
   /*    protected void Override_CheckedChanged(object sender, EventArgs e)
   {
       Page.Validate();
   }*/
}
 
