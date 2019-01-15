
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
public partial class ListaProduktow : System.Web.UI.Page
{
    Hashtable laptopsHashtable = new Hashtable();
    Hashtable partsHashtable = new Hashtable();
    Hashtable accessoriesHashtable = new Hashtable();
    private int counter = 1;


    protected void Page_Init(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            SetVisibleFalse();
            Fill_Hashtable();
            Fill_UI(laptopsHashtable, laptopyList);
            Fill_UI(partsHashtable, czesciList);
            Fill_UI(accessoriesHashtable, akcesoriaList);
            RetriveSelected();
        }
    }
       
    protected void Page_Load(object sender, EventArgs e)
    {
         if (IsPostBack)
        {
        SetVisibleFalse();   
        }
    }


    private void Fill_Hashtable()
    {

        laptopsHashtable.Add(1, new Product(1, "HP Pavilion Power i5-8300H/8GB/240", 1000));
        laptopsHashtable.Add(2, new Product(2, "ASUS VivoBook R520UA i3-8130U/8GB/256SSD/Win10", 2000));
        laptopsHashtable.Add(3, new Product(3, "Lenovo Ideapad 330-15 i3-8130U/8GB/240/Win10 MX150", 3000));
        laptopsHashtable.Add(4, new Product(4, "Huawei MateBook D 15.6 i5-8250U/8GB/256GBSSD/Win10", 4000));

        partsHashtable.Add(1, new Product(5, "Gigabyte GeForce GTX 1060 WindForce II OC 6GB GDDR5", 100));
        partsHashtable.Add(2, new Product(6, "Patriot 8GB 3000MHz Viper 4 CL16 (2x4GB)", 200));
        partsHashtable.Add(3, new Product(7, "AMD Ryzen 5 2600", 300));
        partsHashtable.Add(4, new Product(8, "Crucial 240GB 2,5 SATA SSD BX500", 400));

        accessoriesHashtable.Add(1, new Product(9, "Kingston 32GB DataTraveler 100 G3 (USB 3.0)", 10));
        accessoriesHashtable.Add(2, new Product(10, "Lenovo Optical Mouse M3803A (czarna)", 20));
        accessoriesHashtable.Add(3, new Product(11, "Logitech MK270 Wireless Desktop", 30));
        accessoriesHashtable.Add(4, new Product(12, "Micron 256GB 2,5 SSD M1100 3D NAND USB 3.0", 40));

    }

    private void Fill_UI(Hashtable table, CheckBoxList list)
    {
        int i = 0;
        foreach (DictionaryEntry pair in table)
        {
            list.Items[i].Text = pair.Value.ToString();
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


        AddToSession(laptopyList);
        AddToSession(czesciList);
        AddToSession(akcesoriaList);
        SaveCookies();



        Response.Redirect("Koszyk.aspx");
    }

    private void AddToSession(CheckBoxList list)
    {
        foreach (ListItem item in list.Items)
        {
            if (item.Selected && item.Text != Session[(counter + 1).ToString()])
            {
                Session.Add(counter.ToString(), item.Text);
                counter++;
            }
        }
    }

    private void SaveCookies(){

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
