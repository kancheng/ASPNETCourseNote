using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double temp = 0.0;
    string temresult = "";
    string result = "";
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {

        for (double numb = 1; numb <= 100; numb++) {
            if (numb > 44 && numb < 68) {
                if ((numb % 2) != 0) {
                    temresult = Convert.ToString(numb);
                    result += temresult + "<br>";
                }
            }
        } 

        Label1.Text = result;

        /*
        basefreight = 199;
        string result = "";

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
        */
    }

}
