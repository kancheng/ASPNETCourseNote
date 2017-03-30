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
        /* 設定 Session 變數 */
        Session["UserName"] = txtUser.Text;
        Session["UserPassword"] = txtPass.Text;

        /* 轉址到其他 ASP pages */
        Response.Redirect("Default2.aspx");

    }
}