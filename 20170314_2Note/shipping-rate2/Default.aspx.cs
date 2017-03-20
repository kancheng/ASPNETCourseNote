using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double basefreight, temp;
    double[] weight = { 3.5, 10, 25 };
    string shpr, optxt;
    int test;

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        basefreight = 199;
        string result = "";
        string temresult = "";
        for (int i = 0; i <= weight.Length-1; i++) {

            test = Convert.ToInt32(weight[i]);

            if (test > 5) {
                temp = weight[i] * 20;
            } else {
                temp = weight[i] * 30;
            }
            int id = i + 1;
            shpr = Convert.ToString(temp + basefreight);
            temresult = Convert.ToString("貨物紀錄 : 第" + id + "筆<br>" + "貨物重量" + weight[i] + " kg <br>" + "總計 : " + shpr + " NT <br>" + "基本處理費用 : " + basefreight + " NT <br>" + "運輸費用 : " + temp + " /kg");
            result += temresult + "<br><br>";
        }

        Label1.Text = result;

    }

}
