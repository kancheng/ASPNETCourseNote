using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string[] Product = { "71", "62", "58", "86", "92" };
    protected void Page_Load(object sender, EventArgs e)
    {
        Array.Sort(Product);
    }

    /* max */
    protected void Button1_Click(object sender, EventArgs e)
    {

        double temp = 0.0; double max = 0.0;

        foreach (string price in Product)
        {
            if (price == null) continue;
            temp = double.Parse(price);
            if (max < temp) max = temp;
        }

        Label1.Text = Convert.ToString("Max : " + max);

    }


    /* min */
    protected void Button2_Click(object sender, EventArgs e)
    {
        double temp = 0.0; double min = 100000.0;

        foreach (string price in Product)
        {
            if (price == null) continue;
            temp = double.Parse(price);
            if (min > temp) min = temp;
        }

        Label1.Text = Convert.ToString("Min : " + min);
    }

    /* sum */
    protected void Button3_Click(object sender, EventArgs e)
    {
        double temp = 0.0;

        foreach (string price in Product)
        {
            if (price == null) continue;
            temp += double.Parse(price);
        }

        Label1.Text = Convert.ToString("Sum : " + temp);
    }

    /* average */
    protected void Button4_Click(object sender, EventArgs e)
    {
        double temp = 0.0;

        foreach (string price in Product)
        {
            if (price == null) continue;
            temp += double.Parse(price);
        }
        temp /= Product.Length;

        Label1.Text = Convert.ToString("Average : " + temp);
    }
}
