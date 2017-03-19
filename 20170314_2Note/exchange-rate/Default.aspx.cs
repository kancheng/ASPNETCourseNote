using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    int currency;
    string excr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        currency = int.Parse(TextBox1.Text);
        excr = Convert.ToString(currency * 30);
        Label1.Text = Convert.ToString("<h2>輸出結果 : </h2><br>" + "TWD : " + excr);
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

}
