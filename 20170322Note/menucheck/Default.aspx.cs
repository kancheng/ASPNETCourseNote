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
        int quantity, total = 0;
        quantity = Convert.ToInt32(txtQuantity.Text);
        if (chkOriginal.Checked) {
            total += 250 * quantity;
        }
        if (chkBeef.Checked) {
            total += 275 * quantity;
        }
        if (chkSeaFood.Checked) {
            total += 350 * quantity;
        }
        lblOutput.Text = total.ToString("C");
    }
}