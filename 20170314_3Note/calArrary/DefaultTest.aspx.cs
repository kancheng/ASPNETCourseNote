using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DefaultTest : System.Web.UI.Page
{

    string[] Product = { "2.98", "4.50", "9.98", "4.49", "6.87" };
    protected void Page_Load(object sender, EventArgs e)
    {
        Array.Sort(Product);
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string temp;
        temp = Label1.Text;
        Label1.Text = TextBox1.Text;
        TextBox1.Text = temp;
    }

    //Max
    protected void Button2_Click(object sender, EventArgs e)
    {
        double temp = 0.0; double max = 0.0;

        foreach (string price in Product)
        {
            if (price == null) continue;
            temp = double.Parse(price);
            if (max < temp) max = temp;
        }

        TextBox1.Text = Convert.ToString(max);

    }

    //Min
    protected void Button3_Click(object sender, EventArgs e)
    {
        double temp = 0.0; double min = 100000.0;

        foreach (string price in Product)
        {
            if (price == null) continue;
            temp = double.Parse(price);
            if (min > temp) min = temp;
        }

        TextBox1.Text = Convert.ToString(min);

    }

    //Avg
    protected void Button4_Click(object sender, EventArgs e)
    {
        double temp = 0.0;

        foreach (string price in Product)
        {
            if (price == null) continue;
            temp += double.Parse(price);
        }
        temp /= Product.Length;

        TextBox1.Text = Convert.ToString(temp);
    }


}