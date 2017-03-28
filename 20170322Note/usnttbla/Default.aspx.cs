using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string valus;
    double temus,temnt;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {
        valus = TextBox1.Text;
        temus = Convert.ToDouble(valus);
        temnt = temus * 30.0;
        Label1.Text = Convert.ToString("NT : " + temnt);
    }
}