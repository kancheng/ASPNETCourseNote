using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int i = 0;
    string[] Product = new string[6];

    double price;

    protected void Page_Load(object sender, EventArgs e)
    {
        Product[0] = "3.98";
        Product[1] = "2.98";
        Product[2] = "4.50";
        Product[3] = "9.98";
        Product[4] = "4.49";
        Product[5] = "6.87";
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        price = 0.0;
        string result = "";
        foreach (string choice in Product)
        {
            price = double.Parse(choice);
            if (price >= 1 && price <= 19)
            {
                result += price + "<br />";
            }
        }

        Label1.Text = result;
    }
    
}