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
        septxtid.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        septxtid.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */

        intxtid.Attributes.Add("style", "font-size:xx-small;color:#666666");
        intxtid.Attributes.Add("onFocus", "this.value=''");
        intxtnm.Attributes.Add("style", "font-size:xx-small;color:#666666");
        intxtnm.Attributes.Add("onFocus", "this.value=''");
        intxtcrd.Attributes.Add("style", "font-size:xx-small;color:#666666");
        intxtcrd.Attributes.Add("onFocus", "this.value=''"); 

        mftxtid.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtid.Attributes.Add("onFocus", "this.value=''");
        mftxtnm.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtnm.Attributes.Add("onFocus", "this.value=''");
        mftxtcrd.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtcrd.Attributes.Add("onFocus", "this.value=''");

        deletxtid.Attributes.Add("style", "font-size:xx-small;color:#666666");
        deletxtid.Attributes.Add("onFocus", "this.value=''");
    }

    protected void inpbtn_Click(object sender, EventArgs e)
    {
        if (inp.Visible == false) {
            inp.Visible = true;
        } else {
            inp.Visible = false;
        }
    }

    protected void depbtn_Click(object sender, EventArgs e)
    {
        if (dep.Visible == false) {
            dep.Visible = true;
        } else {
            dep.Visible = false;
        }
    }

    protected void mfpbtn_Click(object sender, EventArgs e)
    {
        if (mfp.Visible == false) {
            mfp.Visible = true;
        } else {
            mfp.Visible = false;
        }
    }

    protected void sepbtn_Click(object sender, EventArgs e)
    {
        if (sep.Visible == false) {
            sep.Visible = true;
        } else {
            sep.Visible = false;
        }
    }

    protected void searchbtn_Click(object sender, EventArgs e)
    {
        try {
            GridView1.DataSourceID = "SqlDataSource3";
            SqlDataSource3.SelectCommand = "Select * From Courses where c_no like '%" + septxtid.Text + "%'";

        } catch (Exception ex) {
            Panel2.Visible = true;
            Label2.Text = "Error : 無效操作";
            Panel3.Visible = true;
            Label3.Text = "Error Information : <br /><hr>" + ex.ToString();
        } finally {

        }
    }

    protected void insertbtn_Click(object sender, EventArgs e)
    {
        try {
            SqlDataSource2.InsertParameters["c_no"].DefaultValue = intxtid.Text;
            SqlDataSource2.InsertParameters["title"].DefaultValue = intxtnm.Text;
            SqlDataSource2.InsertParameters["credits"].DefaultValue = intxtcrd.Text;
            SqlDataSource2.Insert();
            GridView1.DataBind();
        } catch (Exception ex) {
            Panel2.Visible = true;
            Label2.Text = "Error : 無效操作";
            Panel3.Visible = true;
            Label3.Text = "Error Information : <br /><hr>" + ex.ToString();
        } finally {

        }
    }

    protected void modifybtn_Click(object sender, EventArgs e)
    {
        try {
            SqlDataSource2.UpdateParameters["c_no"].DefaultValue = mftxtid.Text;
            SqlDataSource2.UpdateParameters["title"].DefaultValue = mftxtnm.Text;
            SqlDataSource2.UpdateParameters["credits"].DefaultValue = mftxtcrd.Text;
            SqlDataSource2.Update();
            GridView1.DataBind();
        } catch (Exception ex) {
            Panel2.Visible = true;
            Label2.Text = "Error : 無效操作";
            Panel3.Visible = true;
            Label3.Text = "Error Information : <br /><hr>" + ex.ToString();
        } finally {

        }
    }

    protected void deletebtn_Click(object sender, EventArgs e)
    {
        try {
            SqlDataSource2.DeleteParameters["c_no"].DefaultValue = deletxtid.Text;
            SqlDataSource2.Delete();
            GridView1.DataBind();
        } catch (Exception ex) {
            Panel2.Visible = true;
            Label2.Text = "Error : 無效操作";
            Panel3.Visible = true;
            Label3.Text = "Error Information : <br /><hr>" + ex.ToString();
        } finally {

        }
    }
}