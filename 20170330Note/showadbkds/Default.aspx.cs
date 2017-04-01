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
        SqlDataAdapter objDataAdapter;
        string strDbCon, strSQL;

        /* DB connect string */
        strDbCon = "Data Source = (LocalDB)\\MSSQLLocalDB;" +
            "AttachDbFilename = " + Server.MapPath("App_Data\\AddressBooks.mdf") + "; Integrated Security = True";

        /* Build Connection Object */
        objCon = new SqlConnection(strDbCon);
        objCon.Open();

        /* Build DataAdapter Object by SQL Command*/
        strSQL = "SELECT * FROM AddressBooks";
        objDataAdapter = new SqlDataAdapter(strSQL, objCon);

        /* Fill in DataSet Object */
        DataSet objDataSet = new DataSet();
        objDataAdapter.Fill(objDataSet, "AddressBooks");

        Label1.Text = "Table Record : <hr /> 姓名 - 地址 - 電話 - 生日<br />";

        foreach (DataRow objRow in objDataSet.Tables["AddressBooks"].Rows)
        {
            this.Label1.Text += objRow[1] + " - ";
            this.Label1.Text += objRow[2] + " - ";
            this.Label1.Text += objRow[3] + " - ";
            this.Label1.Text += objRow[4] + "<br />";
        }
        /* 關閉資料庫 */
        objCon.Close();
    }


}

