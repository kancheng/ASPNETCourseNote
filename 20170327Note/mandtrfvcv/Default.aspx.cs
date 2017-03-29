using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string txttem = "";
    double height, weight;
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected override void OnPreRender(EventArgs e)
    {
        TextBox2.Attributes.Add("value", TextBox1.Text);
        base.OnPreRender(e);
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        /*
        姓名 TextBox1
        密碼 TextBox2
        身高 TextBox3
        體重 TextBox4
        */
        if (Page.IsValid == true)
        {
            if (Panel1.Visible == false)
            {
                Panel1.Visible = true;

                height = Convert.ToDouble(TextBox3.Text);
                weight = Convert.ToDouble(TextBox4.Text);
                /* show  BMI */
                txttem = " Name : " + TextBox1.Text + "<br />";
                txttem += " Passward : " + TextBox2.Text + "<br />";
                txttem += Convert.ToString(" BMI : " + (weight / (height * height)));
                Label1.Text = txttem;
            }

        }

    }
}