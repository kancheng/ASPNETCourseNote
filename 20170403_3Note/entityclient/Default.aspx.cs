using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.EntityClient;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        EntityConnection objCon;
        EntityCommand objCmd;
        EntityDataReader objDataReader;
        string strSQL;

        /* 建立 Connection 物件 */
        objCon = new EntityConnection("name = SchoolEntities");

        /* 開啟連結 */
        objCon.Open();
        strSQL = "SELECT [S].[name] FROM ";
        strSQL += "[SchoolEntities].[Students] As S";

        /* 建立 Command 物件 */
        objCmd = objCon.CreateCommand();

        /* 指定 SQL 指令 */
        objCmd.CommandText = strSQL;

        /* 執行 SQL 指令 */
        objDataReader = objCmd.ExecuteReader(System.Data.CommandBehavior.SequentialAccess);
        txtOutput.Text = "";

        /* 讀取記錄資料 */
        while (objDataReader.Read()) {
            txtOutput.Text += objDataReader["name"] + "\r\n" ;
        }

        /* 關閉 DataReader 物件 */
        objDataReader.Close();

        /* 關閉連結 */
        objCon.Close();
    }
}