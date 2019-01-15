
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
public partial class ListaProduktow : System.Web.UI.Page
{
    Hashtable hashtable = new Hashtable();
    Hashtable czesciHashtable = new Hashtable();
    Hashtable akcesoriaHashtable = new Hashtable();


    protected void Page_Init(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetVisibleFalse();
            Fill_Hashtable();
            Fill_UI(hashtable, laptopyList);
            Fill_UI(czesciHashtable, czesciList);
            Fill_UI(akcesoriaHashtable, akcesoriaList);
            RetriveSelected();
        }
    }
       
    protected void Page_Load(object sender, EventArgs e)
    {
         if (IsPostBack)
    {
        // Load from cookie.
        SetVisibleFalse();
        
}
    }


    private void Fill_Hashtable()
    {

        hashtable.Add("HP Pavilion Power i5-8300H/8GB/240", 1000);
        hashtable.Add("ASUS VivoBook R520UA i3-8130U/8GB/256SSD/Win10", 2000);
        hashtable.Add("Lenovo Ideapad 330-15 i3-8130U/8GB/240/Win10 MX150", 3000);
        hashtable.Add("Huawei MateBook D 15.6 i5-8250U/8GB/256GBSSD/Win10", 4000);

        czesciHashtable.Add("Gigabyte GeForce GTX 1060 WindForce II OC 6GB GDDR5", 100);
        czesciHashtable.Add("Patriot 8GB 3000MHz Viper 4 CL16 (2x4GB)", 200);
        czesciHashtable.Add("AMD Ryzen 5 2600", 300);
        czesciHashtable.Add("Crucial 240GB 2,5 SATA SSD BX500", 400);

        akcesoriaHashtable.Add("Kingston 32GB DataTraveler 100 G3 (USB 3.0)", 10);
        akcesoriaHashtable.Add("Lenovo Optical Mouse M3803A (czarna)", 20);
        akcesoriaHashtable.Add("Logitech MK270 Wireless Desktop", 30);
        akcesoriaHashtable.Add("Micron 256GB 2,5 SSD M1100 3D NAND USB 3.0", 40);

    }

    private void Fill_UI(Hashtable table, CheckBoxList list)
    {
        int i = 0;
        //ListItem item in laptopyList.Items
        foreach (DictionaryEntry pair in table)
        {
            list.Items[i].Text = pair.Key + "  | " + pair.Value + "zł";
            i++;
        }
    }

    protected void kategorieProduktow_SelectedIndexChanged(object sender, System.EventArgs e)
    {
        String listName = kategorieProduktow.SelectedItem.Value + "List";
        FindControl(listName).Visible = true;
    }

    private void SetVisibleFalse()
    {
        czesciList.Visible = false;
        laptopyList.Visible = false;
        akcesoriaList.Visible = false;

    }

    private void checkCookies() 
    { 
        if (Request.Cookies["selected"] != null)
        {
            Response.Cookies["selected"].Expires = DateTime.Now.AddDays(-1);
        }
    }
    protected void AddToCart(object sender, System.EventArgs e)
    {
        Session.Contents.RemoveAll();
        checkCookies();

        int i = 1;
        foreach (ListItem item in laptopyList.Items)
        {
            if (item.Selected && item.Text != Session[(i+1).ToString()])
            {
                // selected.Add(item.Text);

                Session.Add(i.ToString(), item.Text);
                i++;
            }
        }
        foreach (ListItem item in akcesoriaList.Items)
        {
            if (item.Selected)
            {
                //selected.Add(item.Text);

                Session.Add(i.ToString(), item.Text);
                i++;
            }
        }
        foreach (ListItem item in czesciList.Items)
        {
            if (item.Selected)
            {
                // selected.Add(item.Text);
                Session.Add(i.ToString(), item.Text);
                i++;
            }
        }

       SaveCookies();



        Response.Redirect("Koszyk.aspx");
    }
    private void SaveCookies(){

        /*CheckBoxList[] list = new CheckBoxList[3];
                    list[0] = laptopyList;
                    list[1] = akcesoriaList;
                    list[2] = czesciList;
                    ListItem item = null;
                    for(int k = 0; k < 3; k++){
                        item = list[k].Items.FindByValue(key);
                    }*/

        CheckBoxList[] list = new CheckBoxList[3];
                    list[0] = laptopyList;
                    list[1] = akcesoriaList;
                    list[2] = czesciList;
        
        HttpCookie cookie = new HttpCookie("selected");
        cookie.Expires = DateTime.Now.AddDays(1);
        for(int k = 0; k < 3; k++){
        foreach (ListItem item in list[k].Items)
        {
            if (item.Selected)
            {
                cookie.Values.Add(item.Value, item.Text);
            }
        }
        }

        Response.Cookies.Add(cookie);
    }

 private void RetriveSelected(){
        HttpCookie cookie = Request.Cookies["selected"];
        CheckBoxList[] list = new CheckBoxList[3];
        list[0] = laptopyList;
        list[1] = akcesoriaList;
        list[2] = czesciList;
            if (cookie != null && cookie.Values != null)
            {
                foreach (string key in cookie.Values.Keys)
                {
                   
                    ListItem item = null;
                    for(int k = 0; k < 3; k++){
                        item = list[k].Items.FindByValue(key);
                        if (item != null)
                        {
                            item.Selected = true;
                        }
                    }
                    
                   
                }
        }
    }
}
