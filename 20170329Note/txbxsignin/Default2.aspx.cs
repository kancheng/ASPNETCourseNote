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
        string Username, Password;

        /* 取得參數值 */
        Username = Server.UrlDecode(Request.QueryString["User"]);

        Password = Request.QueryString["Pass"];

        /* 顯示取得的參數值 */

        lblOutput.Text = " 名稱 : " + Username + "<br />";
        lblOutput.Text += " 密碼 : " + Password + "<br />";

    }
}