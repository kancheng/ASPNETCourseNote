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

    protected void rdbRare_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbRare.Text;
    }

    protected void rdbMedium_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbMedium.Text;
    }

    protected void rdbMedWell_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbMedWell.Text;
    }

    protected void rdbWellDone_CheckedChanged(object sender, EventArgs e)
    {
        lblOutput.Text = rdbWellDone.Text;
    }
}