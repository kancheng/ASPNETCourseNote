using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string name;

        /* 檢查 Cookies 是否存在 */
        if ( Request.Cookies["User"] != null) {
            name = Server.UrlDecode(Request.Cookies["User"].Value);
            lblOutput.Text = " Cookies 值 : " + name;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DateTime dtDay = DateTime.Today.AddDays(-365);

        /* 刪除 Cookie */
        Response.Cookies["User"].Expires = dtDay;

        Response.Redirect("Default.aspx");
    }
}