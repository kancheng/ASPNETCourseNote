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
        int ch, i, count;

        /* 取得實際路徑 */
        string path = Server.MapPath( "Output.txt" );
        count = Convert.ToInt32( txtCount.Text );

        /* 開啟文字檔案 */
        StreamReader sr = new StreamReader(path);

        for ( i = 1; i <= count; i++ ) {

            /* 讀取字元 */
            ch = sr.Read();
            txtOutput.Text += (char)(ch) + " ";
        }
        txtOutput.Text += "\r\n";

        /* Close File */
        sr.Close();
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        int i, count;
        string path, str;

        /* 取得實際路徑 */
        path = Server.MapPath("Output.txt");
        count = Convert.ToInt32(txtCount.Text);

        /* 開始文字檔案 */
        StreamReader sr = new StreamReader(path);

        for ( i = 1; i <= count; i++) {
            /* 讀取一行 */
            str = sr.ReadLine();
            txtOutput.Text += str + "\r\n";
        }

        /* 關閉檔案 */
        sr.Close();
    }

    protected void Button3_Click(object sender, EventArgs e)
    {
        /* 取得實際路徑 */
        string path = Server.MapPath("Output.txt");

        /* 開啟文字檔案 */
        StreamReader sr = new StreamReader(path);

        /* 讀至檔尾 */
        string str = sr.ReadToEnd();

        txtOutput.Text += str + "\r\n";

        /* 關閉檔案 */
        sr.Close();
    }

    protected void Button4_Click(object sender, EventArgs e)
    {
        int count = 0;
        string textLine, path;

        /* 取得實際路徑 */
        path = Server.MapPath("Output.txt");

        /* 開啟檔案 */
        StreamReader sr = new StreamReader(path);

        do {
            textLine = sr.ReadLine();
            count += 1;
            txtOutput.Text += count + " : " + textLine + "\r\n" ;
        } while ( !( sr.Peek() == -1) );

        /* Close File */
        sr.Close();
    }
}