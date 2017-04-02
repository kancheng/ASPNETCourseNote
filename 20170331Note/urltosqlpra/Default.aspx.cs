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
        string title = txtTitle.Text;

        /* 轉址且傳遞 URL 參數至 Default2.aspx */
        Response.Redirect( "Default2.aspx?Title=" + title);
    }
}