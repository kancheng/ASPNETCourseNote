using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string tn1, tn2, tn3, tn4, tn5, lbtem = "";
    double nb1 = 30, nb2 = 40, nb3 = 20, nb4 = 25, nb5 = 30, tm1, tm2, tm3, tm4, tm5, total;
    string ts1,ts2, ts3, ts4, ts5;
    protected void Page_Load(object sender, EventArgs e)
    {
    }


    protected void Button1_Click(object sender, EventArgs e)
    {
        lbtem = "<h2> 總計 : </h2> <br />";
        /* 三明治 */
        if (RadioButton1.Checked) {
            tn1 = TextBox1.Text;
            tm1 = Convert.ToDouble(tn1) * nb1;
            ts1 = Convert.ToString(" 品名 : 三明治 " + ", 數量 * " + tn1 + ", 價格 = " + tm1 + "<br />");
        }
        /* 漢堡 */
        if (RadioButton2.Checked) {
            tn2 = TextBox2.Text;
            tm2 = Convert.ToDouble(tn2) * nb2;
            ts2 = Convert.ToString(" 品名 : 漢堡 " + ", 數量 * " + tn2 + ", 價格 = " + tm2 + "<br />");
        }
        /* 豆漿 */
        if (RadioButton3.Checked) {
            tn3 = TextBox3.Text;
            tm3 = Convert.ToDouble(tn3) * nb3;
            ts3 = Convert.ToString(" 品名 : 豆漿 " + ", 數量 * " + tn3 + ", 價格 = " + tm3 + "<br />");
        }

        if (RadioButton4.Checked) {

            /* 奶茶 */
            if (!string.IsNullOrEmpty(TextBox4.Text)) {
                tn4 = TextBox4.Text;
                tm4 = Convert.ToDouble(tn4) * nb4;
                ts4 = Convert.ToString(" 品名 : 奶茶 " + ", 數量 * " + tn4 + ", 價格 = " + tm4 + "<br />");
            }

            /* 奶茶 + 珍珠 */
            if (!string.IsNullOrEmpty(TextBox5.Text))
            {
                tn5 = TextBox5.Text;
                tm5 = Convert.ToDouble(tn5) * nb5;
                ts5 = Convert.ToString(" 品名 : 奶茶 + 珍珠" + ", 數量 * " + tn5 + ", 價格 = " + tm5 + "<br />");
            }
        }
        total = tm1 + tm2 + tm3 + tm4 + tm5;
        Label1.Text = Convert.ToString(lbtem + ts1 + ts2 + ts3 + ts4 + ts5 + "<br / >" + "<h2>  合計 : </h2>" + "<h2>" + total + "</h2>");
    }


    protected void BtPlus_Click(object sender, EventArgs e)
    {
        if (PanelPlus.Visible == false) {
            PanelPlus.Visible = true;
        } else {
            PanelPlus.Visible = false;
        }
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox4_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox5_TextChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {

    }
}