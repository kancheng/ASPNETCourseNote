using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
   static double[] Product = new double[20];

    static _Default()
    {
        Product[0] = 2.98;
        Product[1] = 4.50;
        Product[2] = 9.98;
        Product[3] = 4.49;
        Product[4] = 6.87;
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        /*
        if (RadioButton4.Checked){
            TextBox2.ReadOnly = true;
        }*/

    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton3_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton4_CheckedChanged(object sender, EventArgs e)
    {
        
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        double tmnumber, tmprice;
        string strtnb, strtprc;
        
        strtnb = TextBox1.Text;
        strtprc = TextBox2.Text;
        Label1.Text = Convert.ToString(TextBox2.Text);

        tmnumber = 10;
        tmprice = 5.5;
        if (!strtprc.Equals(""))
        {
            tmprice = Double.Parse(strtprc);
        }
        else
        {
            tmprice = 0;
        }
        tmnumber = Double.Parse(strtnb);

        /* modify */
        if (RadioButton3.Checked) {
            Label1.Text = Convert.ToString("Modify Data : " + modifyPrice(tmnumber, tmprice));
        }
        /* insert */
        if (RadioButton1.Checked)
        {
            Label1.Text = Convert.ToString("Insert Data : " + insertPrice(tmnumber, tmprice));
        }

        /* query */
        if (RadioButton4.Checked)
        { 
            Label1.Text = Convert.ToString("Query Data : " + queryPrice(tmnumber));
        }
        /* delete */
        if (RadioButton2.Checked)
        {
            Label1.Text = Convert.ToString("Delete Data : " + deletePrice(tmnumber));
        }
    }

    double deletePrice(double number)
    {
        int mnub = Convert.ToInt32(number);
        double idex = 0;
        if (Product[mnub] > 0)
        {
            Product[mnub] = 0;
            idex = Product[mnub];
        }
        return idex;

    }
    double queryPrice(double number)
    {
        int mnub = Convert.ToInt32(number);
        double idex = 0;
        if (Product[mnub] > 0)
        {
            idex = Product[mnub];

        }
        return idex;
    }
    double modifyPrice(double number, double txtdata)
    {
        int mnub = Convert.ToInt32(number);
        double idex = txtdata;
        if (Product[mnub] > 0){
                Product[mnub] = txtdata;
                idex = Product[mnub];
        }
        return idex;
    }

    double insertPrice(double number, double txtdata)
    {
            int mnub = Convert.ToInt32(number);
            if (Product[mnub] == 0)
            {
                Product[mnub] = txtdata;
            }
            return txtdata;
    }
}