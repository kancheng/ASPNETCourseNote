using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;


public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");

        /* build FileInfo Object */
        FileInfo fileInfo = new FileInfo(path);

        /* build New File */
        StreamWriter sw = fileInfo.CreateText();

        /* Write */
        sw.Write( txtInput.Text + "\r\n" );
        sw.Flush();
        sw.Close();
        lblOutput.Text = "已經寫入 : " + txtInput.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");

        /* Open File*/
        StreamWriter sw = new StreamWriter(path);

        /* Write */
        sw.WriteLine(txtInput.Text);
        sw.Flush();
        sw.Close();
        lblOutput.Text = "已經覆寫 : " + txtInput.Text;
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Output.txt");

        /* 建立 FileInfo Object */
        FileInfo fileInfo = new FileInfo(path);

        /* 開啟檔案新增至最後 */
        StreamWriter sw = fileInfo.AppendText();

        /* Write */
        sw.Write(txtInput.Text + "\r\n");
        sw.Flush();
        sw.Close();
        lblOutput.Text = "已經新增 : " + txtInput.Text;
    }
}