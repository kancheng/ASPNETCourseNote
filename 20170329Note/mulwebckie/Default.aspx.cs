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
        Response.Cookies["User"]["Name"] = Server.UrlEncode("Haoye");
        Response.Cookies["User"]["ID"] = "043";

        lblOutput.Text = "多鍵的 Cookie 成功建立";

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string name, no;
        if ( Request.Cookies["User"] != null) {
            name = Server.UrlDecode(Request.Cookies["User"]["Name"]);
            no = Request.Cookies["User"]["ID"];
            lblOutput.Text = "Name : " + name + "<br />";
            lblOutput.Text += "ID : " + no + "<br />";
        } else {
            lblOutput.Text = "Error - 多鍵的 Cookie 並不存在";
        }
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        DateTime dtDay = DateTime.Today.AddDays(-365);
        Response.Cookies["User"].Expires = dtDay;
        lblOutput.Text = "多鍵 Cookie 已經刪除";
    }
}