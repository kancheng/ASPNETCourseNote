using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    string gtem = "";
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) // First time actions
        {
            for (int i = 0; i < 100; i++)
            {
                DropDownList1.Items.Add((DateTime.Now.Year - i).ToString());
            }
            for (int i = 1; i < 13; i++)
            {
                DropDownList2.Items.Add((i).ToString());
            }
            DropDownList1.SelectedValue = Convert.ToString(DateTime.Now.Year);
            DropDownList2.SelectedValue = Convert.ToString(DateTime.Now.Year);
        }
    }
    protected override void OnPreRender(EventArgs e)
    { 
        TextBox2.Attributes.Add("value", TextBox1.Text); 
        base.OnPreRender(e); 
    }
    protected void Day_Click(object sender, EventArgs e)
    {
        if (Panel1.Visible == false) {
            Panel1.Visible = true;
        } else {
            Panel1.Visible = false;
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*1. Calendar.TodaysDate */
        Calendar1.TodaysDate = new DateTime(Convert.ToInt32(DropDownList1.SelectedValue),Convert.ToInt32(DropDownList2.SelectedValue),1);
        /* 2. Calendar.VisibleDate */
        Calendar1.VisibleDate = new DateTime(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), 1);
    }

    protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
    {
        Calendar1.TodaysDate = new DateTime(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), 1);

        Calendar1.VisibleDate = new DateTime(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), 1);
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        daytxtb.Text = Calendar1.SelectedDate.ToShortDateString();
        Calendar1.Visible = false;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        if (Panel2.Visible == false) {
            Panel2.Visible = true;
        } else {
            Panel2.Visible = false;
        }
        if (RadioButton1.Checked) {
            gtem = "男";
        } else if (RadioButton2.Checked) {
            gtem = "女";
        } else {
            gtem = "未知";
        }


        Label1.Text = Convert.ToString("<h2>申請確認</h2>" + " <br /> " + "使用者名稱 : " + TextBox1.Text + " <br /> " +
                                        "註冊密碼 : " + TextBox2.Text + " <br /> " +
                                        "性別 : " + gtem + " <br /> " +
                                        "地址 : " + TextBox4.Text + " <br /> " +
                                        "電話 : " + TextBox5.Text + " <br /> " +
                                        "生日 : " + daytxtb.Text + " <br /> " +
                                        "E-mail : " + TextBox6.Text + " <br />");
    }

    protected void RadioButton1_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void RadioButton2_CheckedChanged(object sender, EventArgs e)
    {

    }

    protected void daytxtb_TextChanged(object sender, EventArgs e)
    {

    }
}