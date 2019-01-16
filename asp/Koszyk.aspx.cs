using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;


public partial class Koszyk : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            if (Session.Count != 0)
            {
                foreach (string keyName in Session.Keys)
                    itemsListBox.Items.Add(keyName +
                       ". " + Session[keyName]);
            }
        }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
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
            }
        }
    }

    private decimal countProductsValue()
    {
        decimal value = 0;
        if (Session.Count != 0)
        {
            foreach (string keyName in Session.Keys)
            {
                int startPos = ((string)Session[keyName]).LastIndexOf("  | ") + "  | ".Length;
                int length = ((string)Session[keyName]).IndexOf("zł") - startPos;
                string sub = ((string)Session[keyName]).Substring(startPos, length);
                value += Decimal.Parse(sub);
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
        decimal orderValue = countProductsValue();
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

    private void displayOrderValue(decimal orderValue)
    {
        cenaZamowienia.Visible = true;
        cenaZamowienia.Text = orderValue.ToString() + "zł";
    }

    protected void ClearBasket(object sender, System.EventArgs e)
    {

        Session.Add("cenaZamowienia", cenaZamowienia.Text);
        Response.Redirect("~/PotwierdzenieZamowienia.aspx");

    }
}