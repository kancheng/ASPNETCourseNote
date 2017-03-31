using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack) {
            /* First Load Page */
            ArrayList names = new ArrayList();
            names.Add("Haoye");
            names.Add("Jun");
            names.Add("Jeff");
            names.Add("Jhen");

            /* Specify Data Source */
            lstNames.DataSource = names;

            /* Build Databinding */
            lstNames.DataBind();
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if ( lstNames.SelectedIndex > -1 ) {
            lblOutput.Text = "Select Name : " + lstNames.SelectedItem.Text;
        }
    }
}