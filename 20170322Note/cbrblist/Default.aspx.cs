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
        int i, total = 0, count = 0;
        double rate;

        /* 計算價格 */
        for (i = 0; i <= chkiPhones.Items.Count -1; i++) {
            if (chkiPhones.Items[i].Selected) {
                total += Convert.ToInt32(chkiPhones.Items[i].Value);
                count += 1;
            }
        }

        /* 計算手續費 */
        if (rdbShipment.SelectedIndex > -1) {
            rate = Convert.ToInt32(rdbShipment.SelectedItem.Value) / 100.0;
            lblOutput.Text = " 總價 : $ " + (total * (1 + rate)) + "<br/>";
            lblOutput.Text += "項目數 : " + count;
        }
    }
}