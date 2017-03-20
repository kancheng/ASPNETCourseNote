using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int a, b, c;
    string temax, temin;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        TextBox1.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */
        TextBox2.Attributes.Add("style", "font-size:xx-small;color:#666666");
        TextBox2.Attributes.Add("onFocus", "this.value=''");
        TextBox3.Attributes.Add("style", "font-size:xx-small;color:#666666");
        TextBox3.Attributes.Add("onFocus", "this.value=''");

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        a = int.Parse(TextBox1.Text);
        b = int.Parse(TextBox2.Text);
        c = int.Parse(TextBox3.Text);
        int[] nu = new int[] { a, b, c };
        int max = nu[0];
        int min = nu[0];
        for (int i = 0; i < nu.Length; i++) {
            max = Math.Max(max, nu[i]);
            min = Math.Min(min, nu[i]);
        }
        Label1.Text = Convert.ToString("Max : " + max.ToString() + "<br />" + "Min : " + min.ToString());

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

}
