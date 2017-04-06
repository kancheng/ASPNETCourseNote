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

        string path = Server.MapPath("Test");
        int i = 0;
        DirectoryInfo dirInfo = new DirectoryInfo(path);
        FileInfo fInfo = new FileInfo(path);

        /* 取得目錄清單 */
        try
        {
            DirectoryInfo[] subDirs = dirInfo.GetDirectories();
            for (i = 0; i < subDirs.Length; i++)
            {
                lblOutput.Text += subDirs[i].Name + "<br />";
            }
        }
        catch (DirectoryNotFoundException ex)
        {
            lblOutput.Text += ex.Message + "<br />";
        }

        /* 取得檔案清單 */
        try
        {
            FileInfo[] subFiles = dirInfo.GetFiles();

            foreach (FileInfo subFile in subFiles)
            {
                lblOutput.Text += subFile.Name + "<br />";
            }
        }
        catch (DirectoryNotFoundException ex)
        {

        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string path = Server.MapPath("Test");
        string path2 = Server.MapPath("Test\\book.txt");
        DirectoryInfo dirInfo = new DirectoryInfo(path);
        FileInfo[] subFiles = dirInfo.GetFiles();

        foreach (FileInfo subFile in subFiles)
        {
            if (!(subFile.Name == "book.txt")) {

                FileInfo finfo = new FileInfo(path2);

                StreamWriter sw = finfo.CreateText();
                    // 欲寫入的文字資料
                    sw.Write(Label1.Text + "\r\n");
                sw.Flush();
                sw.Close();
                Label2.Text = "已寫入";
            }
        }

    }
}