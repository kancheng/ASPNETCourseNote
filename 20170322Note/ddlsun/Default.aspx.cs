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

    protected void ddlNames_SelectedIndexChanged(object sender, EventArgs e)
    {
        /* 顯示選擇的使用者名稱 */
        lblOutput.Text = ddlNames.SelectedItem.Text;
    }
}