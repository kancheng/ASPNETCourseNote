using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int choice = int.Parse(TextBox1.Text);

        int price = 00;

        switch (choice)  // switch條件敘述
        {
            case 1:
                price = 100;
                break;
            case 2:
                price = 200;
                break;
            case 3:
                price = 300;
                break;
            case 4:
                price = 400;
                break;
            case 5:
                price = 600;
                break;
            default:
                price = 00;
                break;
        }
        TextBox1.Text = Convert.ToString(price);
    }
}