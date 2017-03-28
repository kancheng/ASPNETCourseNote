using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string vale1, vale2;
    double temv1, temv2;
    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        vale1 = TextBox1.Text;
        vale2 = TextBox2.Text;
        temv1 = Convert.ToDouble(vale1);
        temv2 = Convert.ToDouble(vale2);
        Button btn = (Button)sender;
        if (Panel1.Visible == false) {
            Panel1.Visible = true;
        } else {
            Panel1.Visible = false;
        }

        /* + */
        if (btn.ID == "Button1") {
            Label1.Text = Convert.ToString("計算結果 : <br />" + temv1 + " + " + temv2 + " = " + ( temv1 + temv2 ));
        }

        /* - */
        if (btn.ID == "Button2") {
            Label1.Text = Convert.ToString("計算結果 : <br />" + temv1 + " - " + temv2 + " = " + (temv1 - temv2));
        }

        /* * */
        if (btn.ID == "Button3") {
            Label1.Text = Convert.ToString("計算結果 : <br />" + temv1 + " * " + temv2 + " = " + (temv1 * temv2));
        }

        /* / */
        if (btn.ID == "Button4") {
            Label1.Text = Convert.ToString("計算結果 : <br />" + temv1 + " / " + temv2 + " = " + (temv1 / temv2));
        }

    }


    protected void Button2_Click(object sender, EventArgs e)
    {

    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }

    protected void Button4_Click(object sender, EventArgs e)
    {

    }
}