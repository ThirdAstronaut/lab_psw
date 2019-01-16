using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class PodsumowanieZamowienia : System.Web.UI.Page
{
    protected void Page_Init(object sender, EventArgs e)
    {
        cenaZamowienia.Visible = true;
        cenaZamowienia.Text = (String)Session["cenaZamowienia"];
        if (Request.Cookies["selected"] != null)
        {
            Response.Cookies["selected"].Expires = DateTime.Now.AddDays(-1);
        }

        Session.Abandon();
    }
}