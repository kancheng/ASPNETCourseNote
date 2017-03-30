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
        /*
        帳號 TextBox1
        密碼 TextBox2
        */
        if (Page.IsValid == true) {
            Response.Cookies["user"]["name"] = Server.UrlEncode(TextBox1.Text);
            Response.Cookies["user"]["passwd"] = Server.UrlEncode(TextBox2.Text);
            Response.Cookies["user"].Expires = DateTime.Today.AddDays(10);
            Response.Redirect("Default2.aspx");
        }
    }
}