using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double basefreight, weight, temp;
    string shpr;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        weight = Double.Parse(TextBox1.Text);
        basefreight = 199;

        if (weight > 5){
            temp = weight * 20;
        } else {
            temp = weight * 30;
        }

        shpr = Convert.ToString(temp + basefreight);
        Label1.Text = Convert.ToString("<h2>輸出結果 : </h2><br>" + "總計 : " + shpr + "NT" + "<br>" + "基本處理費用 : " + basefreight + "NT" + "<br>" + "運輸費用 : " + temp + " /kg");
    }

    protected void TextBox1_TextChanged(object sender, EventArgs e)
    {

    }

}
