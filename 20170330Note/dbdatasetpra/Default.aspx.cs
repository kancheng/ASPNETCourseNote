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
        SqlConnection objCon;
        SqlDataAdapter objDataAdapter;
        string strDbCon, strSQL;

        /* DB connect string */
        strDbCon = "Data Source = (LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename = " + Server.MapPath("App_Data\\School.mdf") + "; Integrated Security = True";

        /* Build Connection Object */
        objCon = new SqlConnection(strDbCon);
        objCon.Open();

        /* Build DataAdapter Object by SQL Command*/
        strSQL = "SELECT * FROM Students";
        objDataAdapter = new SqlDataAdapter(strSQL, objCon);

        /* Fill in DataSet Object */
        DataSet objDataSet = new DataSet();
        objDataAdapter.Fill( objDataSet, "Students");

        lblOutput.Text = "Table Record : <hr />";

        foreach (DataRow objRow in objDataSet.Tables["Students"].Rows ) {
            lblOutput.Text += objRow["sid"] + " - ";
            lblOutput.Text += objRow["name"] + " - ";
            lblOutput.Text += objRow["tel"] + " - ";
            lblOutput.Text += objRow["birthday"] + "<br />";
        }
        /* 關閉資料庫 */
        objCon.Close();
    }
}