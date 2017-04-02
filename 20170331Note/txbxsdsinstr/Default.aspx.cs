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
        intxttel.Attributes.Add("style", "font-size:xx-small;color:#666666");
        intxttel.Attributes.Add("onFocus", "this.value=''"); 
        intxtbirt.Attributes.Add("style", "font-size:xx-small;color:#666666"); 
        intxtbirt.Attributes.Add("onFocus", "this.value=''");

        mftxtid.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtid.Attributes.Add("onFocus", "this.value=''");
        mftxtnm.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtnm.Attributes.Add("onFocus", "this.value=''");
        mftxttel.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxttel.Attributes.Add("onFocus", "this.value=''");
        mftxtbirt.Attributes.Add("style", "font-size:xx-small;color:#666666");
        mftxtbirt.Attributes.Add("onFocus", "this.value=''");

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
            SqlDataSource3.SelectCommand = "Select * From Students where sid like '%" + septxtid.Text + "%'";

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
            SqlDataSource2.InsertParameters["sid"].DefaultValue = intxtid.Text;
            SqlDataSource2.InsertParameters["name"].DefaultValue = intxtnm.Text;
            SqlDataSource2.InsertParameters["tel"].DefaultValue = intxttel.Text;
            SqlDataSource2.InsertParameters["birthday"].DefaultValue = intxtbirt.Text;
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
            SqlDataSource2.UpdateParameters["sid"].DefaultValue = mftxtid.Text;
            SqlDataSource2.UpdateParameters["name"].DefaultValue = mftxtnm.Text;
            SqlDataSource2.UpdateParameters["tel"].DefaultValue = mftxttel.Text;
            SqlDataSource2.UpdateParameters["birthday"].DefaultValue = mftxtbirt.Text;
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
            SqlDataSource2.DeleteParameters["sid"].DefaultValue = deletxtid.Text;
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