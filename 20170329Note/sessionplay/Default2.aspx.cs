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
        string name, password;

        lblOutput.Text = "Session ID : " + Session.SessionID + "<br />";

        if ( Session["UserName"] != null ) {

            /* 取得 Session 變數值 */
            name = Session["UserName"].ToString();
            password = Session["UserPassword"].ToString();

            /* 顯示取得 Session 變數值 */
            lblOutput.Text += "Name : " + name + "<br />";
            lblOutput.Text += "Password : " + password + "<br />";

            /* 放棄 Session */
            Session.Abandon();

        }

    }
}