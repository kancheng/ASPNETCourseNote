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
        Label1.Text = Convert.ToString("ASP.NET Web Design");
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Label1.Visible == true) {
            Label1.Visible = false;
        } else {
            Label1.Visible = true;
        }
    }
}