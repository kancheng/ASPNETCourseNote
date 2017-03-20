using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int a, b;
    string formula1, formula2, formula3;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        TextBox1.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */
        TextBox2.Attributes.Add("style", "font-size:xx-small;color:#666666");
        TextBox2.Attributes.Add("onFocus", "this.value=''");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        a = int.Parse(TextBox1.Text);
        b = int.Parse(TextBox2.Text);
        formula1 = Convert.ToString(a * a + 2 * a + 1);
        formula2 = Convert.ToString((a + b) * (a + b) + 20);
        formula3 = Convert.ToString( a * a * a + 3 * b + 5);
        Label1.Text = Convert.ToString("計算結果 : <br><br>" + "x * x + 2 * x + 1 = " + formula1 + "<br>" + "(x + y) * (x + y) + 20 = " + formula2 + "<br>" + "x * x * x + 3 * y + 5 = " + formula3);
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
