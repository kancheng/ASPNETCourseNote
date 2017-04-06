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
        if (IsPostBack) {
            MultiView1.ActiveViewIndex = -1;
        } else {
            MultiView1.ActiveViewIndex = 0;
        }
    }

    protected void Button5_Click(object sender, EventArgs e)
    {
        lblOutput.Text = "使用者名稱 : " + TextBox1.Text + "<br />";
        lblOutput.Text += "使用者姓名 : " + TextBox2.Text + "<br />";
        lblOutput.Text += "使用者密碼 : " + TextBox3.Text + "<br />";
    }
}