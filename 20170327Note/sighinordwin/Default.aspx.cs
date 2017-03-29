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

    }
    protected override void OnPreRender(EventArgs e)
    {
        TextBox1.Attributes.Add("value", TextBox1.Text);
        base.OnPreRender(e);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Page.IsValid == true)
        {
            Panel1.Visible = true;
            Label1.Text = "名稱: " + TextBox1.Text + "<br/>";
            Label1.Text += "密碼: " + TextBox2.Text;
        }

    }
}