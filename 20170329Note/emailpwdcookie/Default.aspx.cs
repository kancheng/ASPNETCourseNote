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
    protected void Button1_Click(object sender, EventArgs e)
    {
        if ( TextBox2.ReadOnly == false ) {
            TextBox2.ReadOnly = true;
        }
        if (Button2.Enabled == false) {
            Button2.Enabled = true;
        }
        if (validPassNo.Enabled == true) {
            validPassNo.Enabled = false;
        }
        Response.Cookies["us"]["em"] = Server.UrlEncode(TextBox1.Text);
        Response.Cookies["us"]["pd"] = Server.UrlEncode(TextBox2.Text);
        Response.Cookies["us"].Expires = DateTime.Today.AddDays(10);

        if (Panel1.Visible == false) {
            Panel1.Visible = true;
            Label1.Text = "Cookies built successfully";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default2.aspx");
    }
}