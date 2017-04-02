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
        string strDbCon, strSQL;
        int count;

        /* DB 連結資料庫 */
        strDbCon = "Data Source = (LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename=" +
            Server.MapPath("App_Data\\School.mdf") +
            "; Integrated Security = True";

        if (Page.IsPostBack) {

            /* 建立 SQL 敘述新增一筆資料表的紀錄 */
            strSQL = "INSERT INTO Students ( sid, name" + ", tel, birthday) VALUES ('";
            strSQL += txtID.Text + "', N'";
            strSQL += txtName.Text + "', '";
            strSQL += txtTel.Text + "', '";
            strSQL += txtBirthday.Text + "') ";

            /* 建立 Connection 物件 */
            objCon = new SqlConnection(strDbCon);

            /* 開啟資料庫連結 */
            objCon.Open();

            /* 建立 Command 物件的 SQL 指令 */
            objCmd = new SqlCommand( strSQL, objCon);

            /* 執行 SQL 指令 */
            count = objCmd.ExecuteNonQuery();
            if ( count == 1 ) {
                lblOutput.Text = "插入一筆資料成功 : " + strSQL;
            } else {
                lblOutput.Text = "Error : 插入記錄失敗 ! ";
            }

            objCon.Close();

        }
    }
}