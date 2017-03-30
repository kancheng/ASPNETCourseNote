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
        if (!IsPostBack) {
            double h, w;
            TextBox txt;
            txt = (TextBox)PreviousPage.FindControl("txtWeight");
            w = Convert.ToDouble(txt.Text);
            txt = (TextBox)PreviousPage.FindControl("txtHeight");
            h = Convert.ToDouble(txt.Text) / 100.0;
            lblOutput.Text = "BMI : " + (w / h / h);

        }
    }
}