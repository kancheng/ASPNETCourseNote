using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string path1, path2, path3;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        path1 = "REMOTE_HOST";
        path2 = "SCRIPT_NAME";
        path3 = "SERVER_SOFTWARE";

        if (Panel1.Visible == false) {
            Panel1.Visible = true;
            if (btn.ID == "Button1") {
                Label1.Text = "<h2> 系統資訊 : </h2><br /><h3>" + path1 + " : " + Request.ServerVariables[path1] + "</h3>";
            }
            if (btn.ID == "Button2") {
                Label1.Text = "<h2> 系統資訊 : </h2><br /><h3>" + path2 + " : " + Request.ServerVariables[path2] + "</h3>";
            }
            if (btn.ID == "Button3") {
                Label1.Text = "<h2> 系統資訊 : </h2><br /><h3>" + path3 + " : " + Request.ServerVariables[path3] + "</h3>";
            }
        } else {
            Panel1.Visible = false;
        }

    }
}
