using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string unm, pwd, add, pho, bir, itg;

    protected void Page_Load(object sender, EventArgs e)
    {
        unm = Server.UrlDecode(Request.QueryString["username"]);
        pwd = Server.UrlDecode(Request.QueryString["password"]);
        add = Server.UrlDecode(Request.QueryString["addre"]);
        pho = Server.UrlDecode(Request.QueryString["pho"]);
        bir = Server.UrlDecode(Request.QueryString["bir"]);
        itg = Server.UrlDecode(Request.QueryString["itg"]);

        Label1.Text = "<h2>檢視使用者資訊 : </h2><br />" +
                        " 1. 帳號 : " + unm + "<br />" +
                        " 2. 密碼 : " + pwd + "<br />" +
                        " 3. 地址 : " + add + "<br />" +
                        " 4. 電話 : " + pho + "<br />" +
                        " 5. 生日 : " + bir + "<br />" +
                        " 6. 興趣 : " + itg + "<br />";

    }
}