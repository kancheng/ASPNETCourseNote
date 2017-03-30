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
        string em, pd;
        em = Server.UrlDecode(Request.Cookies["us"]["em"]);
        pd = Server.UrlDecode(Request.Cookies["us"]["pd"]);
        if (Request.Cookies["us"] != null) {
            Label1.Text = "E-Mail : " + em + "<br />";
            Label1.Text = "Password : " + pd + "<br />";
        } else {
            Label1.Text = "Cookies not exist !!";
        }
        if (Button1.Enabled == true) {
            Button1.Enabled = false;
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        DateTime dtDay = DateTime.Today.AddDays(-365);
        Response.Cookies["us"].Expires = dtDay;
        Label1.Text = "Remove Cookies !";
    }

    protected void Button3_Click(object sender, EventArgs e)
    {

    }
}

