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
        if (Session["Username"] == null)
        {
            Panel1.Visible = true; // 顯示登入表單
            Panel2.Visible = false; // 隱藏訊息表單
        }
        else
        {
            Panel1.Visible = false; // 隱藏登入表單
            Panel2.Visible = true; // 顯示訊息表單
        }
        ShowMessage();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string msg = txtMsg.Text;
        if (msg != "")
        {   // 有聊天訊息  
            UpdateMessage(msg);
            ShowMessage();
        }
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string username = txtUsername.Text;
        if (username != "")
        {
            // 有輸入使用者  
            if (Session["Username"] == null)
            {   // 取得使用者名稱 
                Session["Username"] = username;
                lblPrompt.Text = username + ": ";
                Panel1.Visible = false; // 隱藏登入表單
                Panel2.Visible = true; // 顯示訊息表單
            }
        }
    }

    protected void Timer1_Tick(object sender, EventArgs e)
    {
        ShowMessage();
    }
    // 更新聊天訊息
    public void UpdateMessage(string msg)
    {
        string newMsg = "<b>" + Session["Username"] +
                        "</b>(" + DateTime.Now + "):";
        Application.Lock();
        // 更新聊天訊息 
        Application["Msg1"] = Application["Msg2"];
        Application["Msg2"] = Application["Msg3"];
        Application["Msg3"] = Application["Msg4"];
        Application["Msg4"] = Application["Msg5"];
        Application["Msg5"] = Application["Msg6"];
        Application["Msg6"] = Application["Msg7"];
        Application["Msg7"] = Application["Msg8"];
        Application["Msg8"] = Application["Msg9"];
        Application["Msg9"] = newMsg + msg;
        Application.UnLock();
    }
    // 顯示聊天訊息
    public void ShowMessage()
    {
        lblOutput.Text = Application["Msg9"] + "<br/>";
        lblOutput.Text += Application["Msg8"] + "<br/>";
        lblOutput.Text += Application["Msg7"] + "<br/>";
        lblOutput.Text += Application["Msg6"] + "<br/>";
        lblOutput.Text += Application["Msg5"] + "<br/>";
        lblOutput.Text += Application["Msg4"] + "<br/>";
        lblOutput.Text += Application["Msg3"] + "<br/>";
        lblOutput.Text += Application["Msg2"] + "<br/>";
        lblOutput.Text += Application["Msg1"] + "<br/>";
    }
}