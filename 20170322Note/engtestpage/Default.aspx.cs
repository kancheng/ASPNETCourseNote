using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    double[] scary = new double[5];
    double scnum = 0.0, scper;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        /*
         1 : D : RB14
         2 : B : RB22
         3 : C : RB33
         4 : C : RB43
         5 : B : RB52
         */
        if (RB14.Checked) {
            scary[0] = 20.0;
            scnum = scnum + 20.0;
        }
        if (RB22.Checked) {
            scary[1] = 20.0;
            scnum = scnum + 20.0;
        }
        if (RB33.Checked) {
            scary[2] = 20.0;
            scnum = scnum + 20.0;
        }
        if (RB43.Checked) {
            scary[3] = 20.0;
            scnum = scnum + 20.0;
        }
        if (RB52.Checked) {
            scary[4] = 20.0;
            scnum = scnum + 20.0;
        }

        scper = scnum;
        Label1.Text = Convert.ToString(" Results : " + scper + " <br /> Score rate : " + scper + " %");
    }
}