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
        int i;
        string str = " ";

        for ( i = 0 ; i <= lstGifts.Items.Count -1; i++) {
            if (lstGifts.Items[i].Selected) 
                str = str + lstGifts.Items[i].Text + "<br />";
        }
        lblOutput.Text = str;
    }

    protected void lstGifts_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
}