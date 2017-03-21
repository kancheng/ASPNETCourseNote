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
        TextBox1.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        TextBox1.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */
        TextBox2.Attributes.Add("style", "font-size:xx-small;color:#666666");
        TextBox2.Attributes.Add("onFocus", "this.value=''");
        TextBox3.Attributes.Add("style", "font-size:xx-small;color:#666666");
        TextBox3.Attributes.Add("onFocus", "this.value=''");
        TextBox4.Attributes.Add("style", "font-size:xx-small;color:#666666");
        TextBox4.Attributes.Add("onFocus", "this.value=''");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /*
        姓名 TextBox1
        密碼 TextBox2
        身高 TextBox3
        體重 TextBox4
         */

        double height, weight;
        height = Convert.ToDouble(TextBox3.Text);
        weight = Convert.ToDouble(TextBox4.Text);
        TextBox5.Text = "Name : " + TextBox1.Text + "\r\n";
        TextBox5.Text += "Password : " + TextBox2.Text + "\r\n";
        TextBox5.Text += "BMI : " + ( weight / ( height * height));
    }
}