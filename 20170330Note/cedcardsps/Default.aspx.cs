using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Collections;
using System.Text;

public partial class _Default : System.Web.UI.Page
{
    string temccdsp;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (! IsPostBack) {
            /* ArrayList */
            ArrayList ccdsp = new ArrayList();
            ccdsp.Add("Visa");
            ccdsp.Add("Master");
            ccdsp.Add("AE");
            ccdsp.Add("JCB");

            /* Data Origin */
            CheckBoxList1.DataSource = ccdsp;
            CheckBoxList1.DataBind();
        }

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        StringBuilder sb = new StringBuilder();
        if ( CheckBoxList1.SelectedIndex > -1 ) {
            Panel1.Visible = true;


            for (int i = 0; i < CheckBoxList1.Items.Count; i++)
            {
                if (CheckBoxList1.Items[i].Selected)
                {
                    sb.Append(CheckBoxList1.Items[i].Value.Trim() + ", ");
                }
            }
            sb = sb.Remove(sb.Length - 2, 1);
            Label1.Text = "<h1> Choose Credit Card : </h1><br />" + sb.ToString();
        }
    }
}