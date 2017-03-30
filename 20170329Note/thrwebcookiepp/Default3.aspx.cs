using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string temrb1, temrb2, temrb3, temit, totalstrall;
    string temun, tempwd, temuadd, tempho, tembir;

    protected void Page_Load(object sender, EventArgs e)
    {
        temun = Server.UrlDecode(Request.Cookies["user"]["name"]);
        tempwd = Server.UrlDecode(Request.Cookies["user"]["passwd"]);
        temuadd = Server.UrlDecode(Request.Cookies["user"]["addre"]);
        tempho = Server.UrlDecode(Request.Cookies["user"]["phone"]);
        tembir = Server.UrlDecode(Request.Cookies["user"]["bir"]);

    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;

        if (RadioButton1.Checked) {
            temrb1 = "閱讀";
            temit = temrb1;
        } else if (RadioButton2.Checked) {
            temrb2 = "電動";
            temit = temrb2;
        } else if (RadioButton3.Checked) {
            temrb3 = "運動";
            temit = temrb3;
        }

        if (Button2.Enabled == false) {
            Button2.Enabled = true;
        }

        if (Panel1.Visible == false) {

            Panel1.Visible = true;
            totalstrall = "<h2>檢視使用者資訊 : </h2><br />" + " 1. 帳號 : " + temun + "<br />" +
                                                                " 2. 密碼 : " + tempwd + "<br />" +
                                                                " 3. 地址 : " + temuadd + "<br />" +
                                                                " 4. 電話 : " + tempho + "<br />" +
                                                                " 5. 生日 : " + tembir + "<br />" +
                                                                " 6. 興趣 : " + temit + "<br />";
            Label1.Text = totalstrall;


        } else {
            Panel1.Visible = false;
        }
        if (btn.ID == "Button2")
        {
            Response.Redirect("Default4.aspx?"
                    + "username=" + Server.UrlEncode(temun)
                    + "&password=" + Server.UrlEncode(tempwd)
                    + "&addre=" + Server.UrlEncode(temuadd)
                    + "&pho=" + Server.UrlEncode(tempho)
                    + "&bir=" + Server.UrlEncode(tembir)
                    + "&itg=" + Server.UrlEncode(temit));
        }
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {

    }

}