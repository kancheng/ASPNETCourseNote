using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string temun, tempwd;
    protected void Page_Load(object sender, EventArgs e)
    {
        temun = Server.UrlDecode(Request.Cookies["user"]["name"]);
        tempwd = Server.UrlDecode(Request.Cookies["user"]["passwd"]);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*
        地址 TextBox1
        電話 TextBox2
        生日 TextBox3
        */

        if (Page.IsValid == true)
        {
            Response.Cookies["user"]["name"] = Server.UrlEncode(temun);
            Response.Cookies["user"]["passwd"] = Server.UrlEncode(tempwd);
            Response.Cookies["user"]["addre"] = Server.UrlEncode(TextBox1.Text);
            Response.Cookies["user"]["phone"] = Server.UrlEncode(TextBox2.Text);
            Response.Cookies["user"]["bir"] = Server.UrlEncode(TextBox3.Text);
            Response.Cookies["user"].Expires = DateTime.Today.AddDays(10);
            Response.Redirect("Default3.aspx");
        }

    }
}