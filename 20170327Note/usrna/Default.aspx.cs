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

    protected void validCustom_ServerValidate(object source, ServerValidateEventArgs args)
    {
        /* 
         * 判斷使用者名稱，不可為 "_" 
         *  OwO//////
         */
        if (args.Value.StartsWith("_")) {
            args.IsValid = false;
        } else {
            args.IsValid = true;
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /* 驗證 */

        if (Page.IsValid) {
            lblOutput.Text = " 使用名稱 : " + txtName.Text;
        }
    }
}