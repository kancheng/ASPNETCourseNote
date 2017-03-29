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
        if (Page.IsValid)
        {
            // 驗證成功顯示控制項的值
            lblOutput.Text = "名稱: " + txtName.Text + "<br/>";
            lblOutput.Text += "密碼: " + txtPass1.Text;
        }
    }
}