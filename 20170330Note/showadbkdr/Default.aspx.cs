using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{



    protected void Page_Load(object sender, EventArgs e)
    {


        SqlConnection objCon;
        SqlCommand objCmd;
        SqlDataReader objDR;
        string strDbCon, strSQL;

        /* 資料庫連結字串 */
        strDbCon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                    "AttachDbFilename=" +
                    Server.MapPath("App_Data\\AddressBooks.mdf") + "; Integrated Security=True";

        /* 建立 Connection 物件 */

        objCon = new SqlConnection(strDbCon);

        /* 資料庫連結 */
        objCon.Open();
        strSQL = "SELECT * FROM AddressBooks";

        /* 建立 Command 物件的 SQL 指令 */
        objCmd = new SqlCommand(strSQL, objCon);

        /* 取得 DataReader 物件 */
        objDR = objCmd.ExecuteReader();

        if (objDR.HasRows)
        {

            Label1.Text = "Table Record : <hr /> 姓名 - 地址 - 電話 - 生日<br />";

            /* 顯示資料表的紀錄 */
            while (objDR.Read())
            {
                this.Label1.Text += objDR[1].ToString() + " - ";
                this.Label1.Text += objDR[2].ToString() + " - ";
                this.Label1.Text += objDR[3].ToString() + " - ";
                this.Label1.Text += objDR[4].ToString() + "<br />";
            }

        }
        else
        {

            Label1.Text = "Table not Record Data !!";

        }

        /* Close DataReader */
        objDR.Close();

        /* Close DB Connection */
        objCon.Close();

    }


}

