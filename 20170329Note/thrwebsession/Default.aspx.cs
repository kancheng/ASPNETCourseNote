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
            Session["username"] = TextBox1.Text;
            Session["userpasswd"] = TextBox2.Text;
            Response.Redirect("Default2.aspx");
        }
    }
}