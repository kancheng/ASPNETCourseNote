using System;
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
        /* Build MailMessage Object */
        MailMessage myMail = new MailMessage();

        /* 寄件者 和 收件者 地址 */
        myMail.From = new MailAddress("zxdfgcv@ms2.hinet.net");
        myMail.To.Add(new MailAddress(txtMailTo.Text));

        /* 優先等級 */
        myMail.Priority = MailPriority.Normal;

        /* 主旨 */
        myMail.Subject = txtSubject.Text;

        /* HTML 格式 */
        if (chkFormat.Checked) {
            myMail.IsBodyHtml = true;
            myMail.Body = "<p>" + txtBody.Text + "</p>";
        } else {
            /* 文字格式 */
            /* 本文 */
            myMail.Body = txtBody.Text;
        }

        /* 處理郵件的附檔 */
        string uploadFile = "~/temp/";

        if (fupFile.HasFile) { /* 是否有上傳檔案 */

            /* 建立路徑 */
            uploadFile += fupFile.FileName;

            /* 取得實際的路徑 */
            uploadFile = Server.MapPath(uploadFile);

            /* 儲存上傳檔案 */
            fupFile.SaveAs(uploadFile);

            /* 在 E-mail 加上附檔 */
            Attachment attachedFile = new Attachment(uploadFile);
            attachedFile.Name = fupFile.FileName;

            /* 新增附檔 */
            myMail.Attachments.Add(attachedFile);
        }

        /* 設定 SMTP Server */
        SmtpClient smtpServer = new SmtpClient();
        smtpServer.Host = "ms2.hinet.net";
        CredentialCache myCache = new CredentialCache();

        myCache.Add("ms2.hinet.net", 25, "login", new NetworkCredential("zxdfgcv", "1234"));

        smtpServer.Credentials = myCache;

        /* 寄出郵件 */
        smtpServer.Send(myMail);

        lblOutput.Text = "附檔電子郵件已經寄出 .... <br />";
    }
}