﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;
using System.Net;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string[] emt = new string[5];
        emt[0] = txtMailTo.Text;
        // 建立MailMessage物件
        MailMessage myMail = new MailMessage();
        // 寄件者和收件者郵件地址
        myMail.From = new MailAddress("jojo@gm.com");
        myMail.To.Add(new MailAddress(emt[0]));
        myMail.Priority = MailPriority.Normal; // 優先等級
        myMail.Subject = txtSubject.Text;      // 主旨 
        if (chkFormat.Checked) {               // HTML格式 
            myMail.IsBodyHtml = true;
            myMail.Body = "<p>" + txtBody.Text + "</p>";
        }
        else {                               // 文字格式
            myMail.Body = txtBody.Text;      // 本文
        }
        // 處理郵件的附檔
        string uploadFile1 = "~/temp/";
        string uploadFile2 = "~/temp/";
        if (fupFile1.HasFile) {   // 是否有上傳檔案
            uploadFile1 += fupFile1.FileName; // 建立路徑
            // 取得實際的路徑
            uploadFile1 = Server.MapPath(uploadFile1);
            fupFile1.SaveAs(uploadFile1);   // 儲存上傳檔案
            // 在電子郵件加上附檔
            Attachment attachedFile = new Attachment(uploadFile1);
            attachedFile.Name = fupFile1.FileName;
            myMail.Attachments.Add(attachedFile);  // 新增附檔
        }

        if (fupFile2.HasFile)
        {   // 是否有上傳檔案
            uploadFile2 += fupFile2.FileName; // 建立路徑
            // 取得實際的路徑
            uploadFile2 = Server.MapPath(uploadFile2);
            fupFile2.SaveAs(uploadFile2);   // 儲存上傳檔案
            // 在電子郵件加上附檔
            Attachment attachedFile = new Attachment(uploadFile2);
            attachedFile.Name = fupFile2.FileName;
            myMail.Attachments.Add(attachedFile);  // 新增附檔
        }
        // 設定SMTP伺服器
        SmtpClient smtpServer = new SmtpClient();
        smtpServer.Host = "ms2.hinet.net";
        CredentialCache myCache = new CredentialCache();
        myCache.Add("ms2.hinet.net", 25, "login",
                new NetworkCredential("zxdfgcv", "9487"));
        smtpServer.Credentials = myCache;
        smtpServer.Send(myMail);          // 寄出郵件
        lblOutput.Text = "附檔電子郵件已經寄出.....<br/>";
    }
}