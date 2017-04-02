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


    protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
    {

    }
    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int pos;
        string no;
        if (e.CommandName == "Select") {
            /* 特定列的課程 */
            pos = Convert.ToInt32(e.CommandArgument);
            no = GridView1.DataKeys[pos].Value.ToString();
            lblOutput.Text = "課程編號 : " + no;
        }
    }
}