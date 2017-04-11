﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;


public partial class _Default : System.Web.UI.Page
{
    static double[] Product = new double[50];


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

        septxtid.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        septxtid.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */

        intxtid.Attributes.Add("style", "font-size:xx-small;color:#666666");
        intxtid.Attributes.Add("onFocus", "this.value=''");
        intxtnm.Attributes.Add("style", "font-size:xx-small;color:#666666");
        intxtnm.Attributes.Add("onFocus", "this.value=''");

        mftxtid.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtid.Attributes.Add("onFocus", "this.value=''");
        mftxtnm.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtnm.Attributes.Add("onFocus", "this.value=''");

        deletxtid.Attributes.Add("style", "font-size:xx-small;color:#666666");
        deletxtid.Attributes.Add("onFocus", "this.value=''");
    }

    protected void inpbtn_Click(object sender, EventArgs e)
    {
        if (inp.Visible == false)
        {
            inp.Visible = true;
        }
        else
        {
            inp.Visible = false;
        }
    }

    protected void depbtn_Click(object sender, EventArgs e)
    {
        if (dep.Visible == false)
        {
            dep.Visible = true;
        }
        else
        {
            dep.Visible = false;
        }
    }

    protected void mfpbtn_Click(object sender, EventArgs e)
    {
        if (mfp.Visible == false)
        {
            mfp.Visible = true;
        }
        else
        {
            mfp.Visible = false;
        }
    }

    protected void sepbtn_Click(object sender, EventArgs e)
    {
        if (sep.Visible == false)
        {
            sep.Visible = true;
        }
        else
        {
            sep.Visible = false;
        }
    }
    protected void idmsallbtn_Click(object sender, EventArgs e)
    {
        Button btn = (Button)sender;
        if (Panel1.Visible == false)
        {
            Panel1.Visible = true;
        }
        else
        {
            Panel1.Visible = false;
        }

            double tminumber, tmmnumber, tmsnumber, tmdnumber;
            double tmiprice, tmmprice;
            string stritnb, stritprc, strmtnb, strmtprc, strstnb, strdtnb;
            stritnb = intxtid.Text;
            stritprc = intxtnm.Text;
            strmtnb = mftxtid.Text;
            strmtprc = mftxtnm.Text;
            strstnb = septxtid.Text;
            strdtnb = deletxtid.Text;

            

            /* modify */

            if (btn.ID == "modifybtn")
            {
            tmmnumber = Convert.ToDouble(strmtnb);
            tmmprice = Convert.ToDouble(strmtprc);
            Label1.Text = Convert.ToString("Modify Data : " + modifyPrice(tmmnumber, tmmprice));
            }

            /* insert */

            if (btn.ID == "insertbtn")
            {
            tminumber = Convert.ToDouble(stritnb);
            tmiprice = Convert.ToDouble(stritprc);
            Label1.Text = Convert.ToString("Insert Data : " + insertPrice(tminumber, tmiprice));
            }

            /* query */

            if (btn.ID == "searchbtn")
            {
            tmsnumber = Convert.ToDouble(strstnb);
            Label1.Text = Convert.ToString("Query Data : " + queryPrice(tmsnumber));
            }

            /* delete */

            if (btn.ID == "deletebtn")
            {
            tmdnumber = Convert.ToDouble(strdtnb);
            Label1.Text = Convert.ToString("Delete Data : " + deletePrice(tmdnumber));
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
        if (Product[mnub] > 0)
        {
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
