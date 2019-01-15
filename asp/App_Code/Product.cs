using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Summary description for Product
/// </summary>
public class Product
{
    private int id {get; set;}
    private String description { get; set; }
    private decimal price { get; set; }


	public Product(int id, String description, decimal price)
	{
        this.id = id;
        this.description = description;
        this.price = price;
	}

    public override string ToString()
    {
        return  description + "  | " + price + "zł";
    }
}