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
        if (rdbRare.Checked) {
            lblOutput.Text = "三分熟";
        }
        if (rdbMedium.Checked) {
            lblOutput.Text = "五分熟";
        }
        if (rdbMedWell.Checked) {
            lblOutput.Text = "七分熟";
        }
        if (rdbWellDone.Checked) {
            lblOutput.Text = "全熟";
        }

    }
}