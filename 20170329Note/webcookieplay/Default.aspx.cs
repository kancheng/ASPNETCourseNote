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
        string name = "Haoye";

        /* 新增 Cookie */
        Response.Cookies["User"].Value = Server.UrlEncode(name);
        DateTime dtDay = DateTime.Today.AddDays(10);

        Response.Cookies["User"].Expires = dtDay;

        lblOutput.Text = "您已經成功建立 Cookies !";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {

        /* 轉址 */
        Response.Redirect("Default2.aspx");
    }
}