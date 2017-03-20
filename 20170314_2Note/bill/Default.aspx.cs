using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double timedata, minute, cost;
    string opttem;
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        TextBox1.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */
    }
    static public double bill(double hour)
    {
        double total = 0;
        if (hour <= 50)
        {
            total = (hour * 60) * 0.3;
        }
        else if (hour >= 50)
        {
                total = (hour * 60) * 0.2;
        }
        return total;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        timedata = double.Parse(TextBox1.Text);
        cost = bill(timedata);
        Label1.Text = Convert.ToString("<h2>輸出結果 : </h2><br>" + "費用 : " +  cost );
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

}
