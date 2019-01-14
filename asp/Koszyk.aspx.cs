using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


public partial class Koszyk : System.Web.UI.Page
{
    // read Session items and populate ListBox with recommendations
    protected void Page_Init(object sender, EventArgs e)
    {
        if (Session.Count != 0)
        {
            foreach (string keyName in Session.Keys)
                itemsListBox.Items.Add(keyName +
                   ". " + Session[keyName]);
        } // end if
    } // end method Page_Init
    protected void Page_Load(object sender, EventArgs e)
    {

        // determine whether Session contains any information
        if (Session.Count != 0)
        {
            displayProductsValue();
        }
        else
        {
            itemsListBox.Items.Clear();
            itemsListBox.Visible = false;
            cenaProduktow.Text = "";
            cenaZamowienia.Text = "";
        } // end else
    }

    private int countProductsValue()
    {
        int value = 0;
        if (Session.Count != 0)
        {
            foreach (string keyName in Session.Keys)
            {
                //var words = ((string)Session[keyName]).Split('|');

                int startPos = ((string)Session[keyName]).LastIndexOf("  | ") + "  | ".Length;
                int length = ((string)Session[keyName]).IndexOf("zł") - startPos;
                string sub = ((string)Session[keyName]).Substring(startPos, length);
                value += Int32.Parse(sub);
            }

        }
        return value;
    }

    private void displayProductsValue()
    {
        cenaProduktow.Visible = true;
        cenaProduktow.Text = countProductsValue().ToString() + "zł";
    }




    protected void formaDostawy_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        int orderValue = countProductsValue();
        String listName = formaDostawy.SelectedItem.Value;

        switch (listName)
        {
            case "kurier":
                orderValue += 25;
                break;
            case "poczta":
                orderValue += 15;
                break;
            default:
                orderValue += 0;
                break;
        }
        if (Session.Count != 0)
        {
            displayOrderValue(orderValue);
            btnZamowienie.Enabled = true;
        }

    }

    private void displayOrderValue(int orderValue)
    {
        cenaZamowienia.Visible = true;
        cenaZamowienia.Text = orderValue.ToString() + "zł";
    }

    protected void ClearBasket(object sender, System.EventArgs e)
    {
        /* recommendationsLabel.Text = "No Recommendations";
         booksListBox.Items.Clear();
         booksListBox.Visible = false;

         // modify languageLink because no language was selected
         languageLink.Text = "Click here to choose a language";*/

        Session.Abandon();
        Response.Redirect("~/Koszyk.aspx");

    }
}