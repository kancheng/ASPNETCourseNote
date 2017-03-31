using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        SqlConnection objCon;
        string strDbCon;

        /* DB Connect string */
        strDbCon = "Data Source = (LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=" +
            Server.MapPath("App_Data\\School.mdf") + "; Integrated Security = True";

        /* build Connection Object*/
        objCon = new SqlConnection(strDbCon);

        /* Start DB Connect */
        objCon.Open();

        /* build Command Object by SQL Command  Line*/
        SqlCommand objCmd = new SqlCommand(txtSQL.Text, objCon);

        /* use ExecuteScalar run SQL Command */
        lblOutput.Text = "SELECT : " + objCmd.ExecuteScalar();

        /* Close DB Connect */
        objCon.Close();

    }
}