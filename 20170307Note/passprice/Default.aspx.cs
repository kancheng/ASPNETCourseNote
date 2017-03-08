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

    protected void Button1_Click(object sender, EventArgs e)
    {

        string grade = "C";

        string str = "";

        grade = TextBox1.Text;
        switch (grade)  // switch條件敘述
        {
            case "A":
                str = "10 NT<br/>";
                break;
            case "B":
                str = "20 NT<br/>";
                break;
            case "C":
                str = "30 NT<br/>";
                break;
            case "D":
                str = "300 NT<br/>";
                break;
            case "E":
                str = "3000 NT<br/>";
                break;


            default:
                str = "ERROR <br/>";
                break;
        }
        lblOutput.Text += str;
    }
}