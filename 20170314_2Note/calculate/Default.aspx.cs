using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int a, b;
    string sub, add;
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        if (a == null)
        {
            a = 156;
        }

        if (b == null)
        {
            b = 150;
        }
        */
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        a = int.Parse(TextBox1.Text);
        b = int.Parse(TextBox2.Text);
        sub = Convert.ToString(a + b);
        add = Convert.ToString(a - b);
        Label1.Text = Convert.ToString("輸出結果 : <br><br>" + "減法 : " + add + "<br>" + "加法 : " + sub);
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}
