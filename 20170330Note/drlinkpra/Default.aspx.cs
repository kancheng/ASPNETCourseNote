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
        SqlCommand objCmd;
        SqlDataReader objDR;
        string strDbCon, strSQL;

        /* 資料庫連結字串 */
        strDbCon = "Data Source = (LocalDB)\\MSSQLLocalDB;" +
                    "AttachDbFilename = " +
                    Server.MapPath("App_Data\\School.mdf") + "; Integrated Security=True";

        /* 建立 Connection 物件 */

        objCon = new SqlConnection(strDbCon);

        /* 資料庫連結 */
        objCon.Open();
        strSQL = "SELECT * FROM Students";

        /* 建立 Command 物件的 SQL 指令 */
        objCmd = new SqlCommand( strSQL, objCon);

        /* 取得 DataReader 物件 */
        objDR = objCmd.ExecuteReader();

        if (objDR.HasRows) {

            lblOutput.Text = "Table Record : <hr />";

            /* 顯示資料表的紀錄 */
            while (objDR.Read()) {
                lblOutput.Text += objDR["sid"] + " - ";
                lblOutput.Text += objDR["name"] + " - ";
                lblOutput.Text += objDR["tel"] + "<br />";
            }

        } else {

            lblOutput.Text = "Table not Record Data !!";

        }

        /* Close DataReader */
        objDR.Close();

        /* Close DB Connection */
        objCon.Close();
    }
}