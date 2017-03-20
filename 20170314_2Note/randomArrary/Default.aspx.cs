using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    Random rd = new Random(Guid.NewGuid().GetHashCode());

    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        int index = rd.Next(1, 151);
        int[] values = new int[4] ;
        int temval;
        for (int tem = 0; tem <= values.Length-1; tem++) {
            temval = rd.Next(1, 151);
            values[tem] = temval;

        }

        string temresult = Convert.ToString("第一個亂數 : " + values[0] + "<br>" + "第二個亂數 : " + values[1] + "<br>"+ "第三個亂數 : " + values[2] + "<br>" + "第四個亂數 : " + values[3]);
        Label1.Text = temresult;
    }

}
