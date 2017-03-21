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
        Button btn = (Button)sender;

        if ( btn.ID == "Button1") {
            Label1.Text = "I am Jhen. OUO";
        } else if ( btn.ID == "Button2") {
            Label1.Text = "I am Haoye. OWO";
        } else if ( btn.ID == "Button3") {
            Label1.Text = "I am Jeff. OAO";
        }
    }

    protected void Button2_Click(object sender, EventArgs e) { }

    protected void Button3_Click(object sender, EventArgs e) { }
}