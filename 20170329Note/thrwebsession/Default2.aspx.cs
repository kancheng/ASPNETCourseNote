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
        地址 TextBox1
        電話 TextBox2
        生日 TextBox3
        */
        if (Page.IsValid == true) {
            Session["useraddre"] = TextBox1.Text;
            Session["userphone"] = TextBox2.Text;
            Session["userbir"] = TextBox3.Text;
            Response.Redirect("Default3.aspx");
        }


    }
}