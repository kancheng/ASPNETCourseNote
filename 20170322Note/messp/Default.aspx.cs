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

    /* 取代字串 */
    string strReplace(string input, string search, string replace) {
        int pos, len;
        string output, left, right;
        pos = input.IndexOf(search);
        len = search.Length;
        output = input;
        while (pos != -1) {
            
            /* 取得搜尋左邊的字串 */
            left = output.Substring(0, pos);

            /* 取得搜尋右邊的字串 */
            right = output.Substring(pos+len);

            output = left + replace + right;

            pos = output.IndexOf(search); /* 再次搜尋 */
        }

        return output;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        lblOutput.Text = "<hr/>" + DateTime.Now + "<hr/>" +
            txtName.Text + " 說 : " + strReplace(txtMessage.Text, "\r\n", "<br/>") + lblOutput.Text;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {
        txtName.Text = "";
        txtMessage.Text = "";
    }
}