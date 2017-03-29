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
        string name, nick;
        name = "Haoye";
        nick = "Hamster";
        if (IsPostBack) {
            /* 表單送回 */
            string myName = "";
            if (ViewState["NickName"] != null) {
                myName = ViewState["NickName"].ToString();
            }
            lblOutput.Text = myName + "/" + txtName.Text;
        } else {
            txtName.Text = name;
            /* 指定 StateBag 物件的變數 */
            ViewState["NickName"] = nick;
        }

    }
}