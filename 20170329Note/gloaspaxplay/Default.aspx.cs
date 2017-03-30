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
        string output = Application["msg"].ToString();
        lblOutput.Text = output;

        /* 清掉 Application 變數 */
        Application["msg"] = "";
        lblOutput.Text += " 載入網頁 ..... <br / > 顯示網頁內容 .....";

        if (Session.IsNewSession == true) {
            lblOutput.Text += "<b> 新的 Session </b> <br />";
        } else {
            lblOutput.Text += "<b> 同一個 Session</b> <br />";
        }

    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        /* 結束 Session */
        Session.Abandon();

        /* 轉址至自己 */
        Response.Redirect("Default.aspx");
    }
}