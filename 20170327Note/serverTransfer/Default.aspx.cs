using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string link1, link2, link3;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        link1 = "http://www.google.com.tw";
        link2 = "https://www.facebook.com/";
        link3 = "http://www.microsoft.com";

        if (btn.ID == "Button1") {
            Response.Redirect(link1);
        }
        if (btn.ID == "Button2") {
            Response.Redirect(link2);
        }
        if (btn.ID == "Button3") {
            Response.Redirect(link3);
        }
        if (btn.ID == "Button4") {
            Server.Transfer("dfgoogle.aspx");
        }
        if (btn.ID == "Button5") {
            Server.Transfer("dffb.aspx");
        }
        if (btn.ID == "Button6") {
            Server.Transfer("dfms.aspx");
        }

    }
}
