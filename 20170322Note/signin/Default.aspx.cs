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
        txtName.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        txtName.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */
        txtPass.Attributes.Add("style", "font-size:xx-small;color:#666666");
        txtPass.Attributes.Add("onFocus", "this.value=''");

        if (Page.IsPostBack) {
            /* 表單處裡 */
            if (txtName.Text != "") {
                lblOutput.Text = txtName.Text + "歡迎進入網頁 ! ";
            }
        } else { /* 第一次載入網頁 */
            txtName.Text = "Haoye";
        }
    }
}