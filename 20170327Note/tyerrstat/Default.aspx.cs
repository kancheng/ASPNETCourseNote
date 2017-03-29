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
        int x = Convert.ToInt32(txtOp1.Text);

        int y = Convert.ToInt32(txtOp2.Text);

        try {
            /* 測試 Error Code */

            x = x / y;

        } catch (Exception ex) {
            /* Error Handle Code */
            lblOutput.Text += " 程式錯誤 : " + ex.ToString();
        } finally {
            /* 顯示測試值 */
            lblOutput.Text += "<hr> 測試值 x = " + x + " <br />";
            lblOutput.Text += "測試值 y = " + y + "<br />";
        }
    }
}