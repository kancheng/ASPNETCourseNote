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
        lblOutput.Text = Request.ServerVariables[txtServer.Text];
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        /* 換行標簽常數 */
        const string BR = "<br />";

        HttpBrowserCapabilities hbc = Request.Browser;
        lblOutput.Text = " 瀏覽器種類 : " + hbc.Type + BR ;
        lblOutput.Text += " 瀏覽器名稱 : " + hbc.Browser + BR ;
        lblOutput.Text += " 版本 : " + hbc.Version + BR ;
        lblOutput.Text += " 主版本 : " + hbc.MajorVersion + BR ;
        lblOutput.Text += " 次版本 : " + hbc.MinorVersion + BR ;
        lblOutput.Text += " 平台 : " + hbc.Platform + BR ;
        lblOutput.Text += " 支援框架 : " + hbc.Frames + BR ;
        lblOutput.Text += " 支援表格 : " + hbc.Tables + BR ;
        lblOutput.Text += " 支援 Cookies : " + hbc.Cookies + BR ;
        lblOutput.Text += " 支援 VBScript : " + hbc.VBScript + BR;
        lblOutput.Text += " 支援 JavaScript : " + hbc.JavaScript + BR;
        lblOutput.Text += " 支援 Java Applets : " + hbc.JavaApplets + BR;
        lblOutput.Text += " 支援 : ActiveX 控制 " + hbc.ActiveXControls + BR;
    }
}