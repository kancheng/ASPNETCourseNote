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
        /* 控制 Wizard */
        Wizard1.Visible = true; 
    }

    protected void Wizard1_FinishButtonClick(object sender, WizardNavigationEventArgs e)
    {
        lblOutput.Text = "使用者名稱: " + txtUser.Text + "<br/>";
        lblOutput.Text += "使用者姓名: " + txtName.Text + "<br/>";
        lblOutput.Text += "使用者密碼: " + txtPass.Text + "<br/>";
        Wizard1.Visible = false;  /* 隱藏Wixard控制項 */
    }
}