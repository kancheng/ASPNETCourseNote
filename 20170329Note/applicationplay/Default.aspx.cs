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
        /* 初始 Application 變數 */
        if ( Application["Page_Counter"] == null ) {

            Application.Lock();

            /* 初始進入次數 */
            Application["Page_Counter"] = 0;
            Application.UnLock();
        }

        Application.Lock();

        /* 進入網頁的次數 + 1 */
        Application["Page_Counter"] = Convert.ToInt32( Application["Page_Counter"]) + 1;

        Application.UnLock();

        lblOutput.Text = "所有 使用者 進入網頁的次數 : " + Application["Page_Counter"];

    }
}