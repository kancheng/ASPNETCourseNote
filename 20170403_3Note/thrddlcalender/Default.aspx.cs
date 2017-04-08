using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    static int y, temy, m, temm, d;
    static _Default (){

    }

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!Page.IsPostBack) // First time actions
        {

            for (y = 0; y < 100; y++)
            {
                DropDownList1.Items.Add((DateTime.Now.Year - y).ToString());
            }

            for (m = 1; m < 13; m++)
            {
                DropDownList2.Items.Add((m).ToString());
            }
            DropDownList1.SelectedValue = Convert.ToString(DateTime.Now.Year);
            DropDownList2.SelectedValue = Convert.ToString(DateTime.Now.Year);
        }
    }

    protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
    {
        /*1. Calendar.TodaysDate */
        Calendar1.TodaysDate = new DateTime(Convert.ToInt32(DropDownList1.SelectedValue), Convert.ToInt32(DropDownList2.SelectedValue), 1);
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
        Label1.Text = Calendar1.SelectedDate.ToShortDateString();
    }
}
 