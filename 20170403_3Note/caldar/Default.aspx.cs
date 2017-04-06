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
        /* 選取模式 */
        Calendar1.SelectionMode = (CalendarSelectionMode)(ddlMode.SelectedIndex);

        if (Calendar1.SelectionMode == CalendarSelectionMode.None) {
            /* 清除選取 */
            Calendar1.SelectedDates.Clear();

            /* 設定目前月份 */
            Calendar1.VisibleDate = new DateTime(
                Calendar1.TodaysDate.Year, ddlMonth.SelectedIndex + 1, 1);

            lblOutput.Text = "VisibleDate 屬性值 : " + Calendar1.VisibleDate.ToShortDateString();
        }
    }

    protected void Calendar1_SelectionChanged(object sender, EventArgs e)
    {
        /* 顯示選取日期範圍 */
        switch (Calendar1.SelectedDates.Count) {
            case 0: /* None */
                lblOutput.Text = "無選擇日期資料 ...";
                break;
            case 1: /* Day */
                lblOutput.Text = "選擇的日期 : ";
                Calendar1.SelectedDate.ToShortDateString();
                break;
            case 7: /* Week */
                lblOutput.Text = "選擇的星期 : ";
                Calendar1.SelectedDate.ToShortDateString();
                break;
            default: /* Month */
                lblOutput.Text = "選擇的月份 : ";
                Calendar1.SelectedDate.ToShortDateString();
                break;
        }
    }

    protected void Calendar1_VisibleMonthChanged(object sender, MonthChangedEventArgs e)
    {
        lblOutput.Text = "新月份 : " + e.NewDate.Month.ToString() +
            "<br /> 原始前一月份 : " + e.PreviousDate.Month.ToString(); 
    }

}