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
    private DataSet objDS;
    private SqlDataAdapter objAdapter;
    private DataTable appTable;
    // 資料庫連接字串
    private string strDbCon; 
    protected void Page_Load(object sender, EventArgs e)
    {
        strDbCon = "Data Source=(LocalDB)\\MSSQLLocalDB;" +
                                 "AttachDbFilename=" +
                                 Server.MapPath("App_Data\\Appointment.mdf") +
                                 ";Integrated Security=True";
        string strSQL;
        txtName.Enabled = false;   // 指定文字方塊為沒有作用
        txtID.Enabled = false;
        txtDOB.Enabled = false;
        txtAddress.Enabled = false;
        txtPostCode.Enabled = false;
        txtPhone.Enabled = false;
        lblMessage.Text = "診所的所有預約資訊";
        SqlConnection objCon = new SqlConnection(strDbCon);  // 建立Connection物件
        objCon.Open();          // 開啟資料連接
        objDS = new DataSet();  // 建立DataSet物件
        strSQL = "SELECT * FROM Aptment";
        objAdapter = new SqlDataAdapter(strSQL, objCon);
        objAdapter.Fill(objDS, "Aptment");   // 填入DataSet物件
        // 取得所有預約資料的DataTable物件
        appTable = objDS.Tables["Aptment"];
        // 是否是表單送回
        if (!IsPostBack)
        {
            FillPatientInfo();  // 填入病人資料
            DateTime selectedDate = DateTime.Now;
            calDentist.SelectedDate = getFreeDate(selectedDate);
        }
        else
        {
            viewAp.DataBind();   // 執行資料繫結
        }
        objCon.Close();          // 關閉資料連接
    }
    // 填入病人資料
    void FillPatientInfo()
    {
        ddlPatient.Items.Clear();  // 清除下拉式清單方塊的項目
        string strSQL;
        SqlConnection objCon = new SqlConnection(strDbCon);
        strSQL = "SELECT PatientID, Name FROM Patient";
        SqlCommand objCmd = new SqlCommand(strSQL, objCon);
        SqlDataReader objDR;
        // 建立ListItem物件
        ListItem newItem01 = new ListItem();
        newItem01.Text = "選擇病人姓名";
        newItem01.Value = "0";
        // 新增下拉式清單的項目, 即ListItem物件
        ddlPatient.Items.Add(newItem01);
        try
        {
            objCon.Open();
            objDR = objCmd.ExecuteReader();
            while (objDR.Read())  // 建立所有病人姓名的項目清單
            {
                ListItem newItem = new ListItem();
                newItem.Text = objDR["Name"].ToString();
                newItem.Value = objDR["PatientID"].ToString();
                ddlPatient.Items.Add(newItem); // 新增
            }
            objDR.Close();
        }
        catch (Exception ex)
        {
            lblMessage.Text = "錯誤! 無法讀取姓名清單.";
            lblMessage.Text += ex.Message;
        }
        finally { objCon.Close(); }
    }
    // 取得可用的日期
    DateTime getFreeDate(DateTime selectedDate)
    {
        if (appTable.Rows.Count > 0)   // DataTable物件是否有預約記錄
        {
            DateTime tDate;
            Boolean isOKDate = false;
            while (!isOKDate)
            {
                isOKDate = true;
                // 取出所有預約記錄來檢查日期是否已預約
                foreach (DataRow tRow in appTable.Rows)
                {
                    tDate = Convert.ToDateTime(tRow["DateOfAptment"]);
                    if (tDate.Date == selectedDate.Date)
                    {
                        isOKDate = false;
                        // 可預約日是下一天
                        selectedDate = selectedDate.AddDays(1);
                    }
                }
            }
        }
        return selectedDate;
    }

    protected void calDentist_DayRender(object sender, DayRenderEventArgs e)
    {
        if (appTable.Rows.Count > 0)   // DataTable物件是否有預約記錄
        {
            DateTime tDate;
            // 檢查已預約日期, 以便在Calendar控制項顯示此日為有預約
            foreach (DataRow tRow in appTable.Rows)
            {
                tDate = Convert.ToDateTime(tRow["DateOfAptment"]);
                if (tDate.Date == e.Day.Date)
                {
                    // 指定背景色彩
                    e.Cell.BackColor = System.Drawing.Color.Cyan;
                    Label lbl = new Label();   // 建立Label控制項
                    lbl.Text = "<br/>有預約!";
                    // 判決是否已經新增Label控制項
                    if (e.Cell.Controls.Count <= 1)
                        e.Cell.Controls.Add(lbl);  // 新增Label控制項
                }
            }
        }
    }

    protected void calDentist_SelectionChanged(object sender, EventArgs e)
    {
        DateTime selectedDate = calDentist.SelectedDate;
        calDentist.SelectedDate = getFreeDate(selectedDate);
        // 建立可用時間的下拉式清單項目
        ddlApointment.Items.Clear();
        switch (calDentist.SelectedDate.DayOfWeek)
        {
            case DayOfWeek.Sunday:   // 星期日
              ddlApointment.Items.Add("10:00");
              ddlApointment.Items.Add("10:30");
              ddlApointment.Items.Add("11:00");
              ddlApointment.Items.Add("11:30");
              break;
            default:                 // 其他星期
              ddlApointment.Items.Add("12:30");
              ddlApointment.Items.Add("13:30");
              ddlApointment.Items.Add("14:30");
              ddlApointment.Items.Add("15:30");
              ddlApointment.Items.Add("16:30");
              break;
        }
    }

    protected void ddlPatient_SelectedIndexChanged(object sender, EventArgs e)
    {
        string strSQL;
        if (Convert.ToInt32(ddlPatient.SelectedItem.Value) > 0)   // 有選擇
        {
            // 取得選擇的病人資料            
            SqlConnection objCon = new SqlConnection(strDbCon);
            strSQL = "SELECT * FROM Patient WHERE PatientID ='" +
                        ddlPatient.SelectedItem.Value + "'";
            SqlCommand objCmd = new SqlCommand(strSQL, objCon);
            SqlDataReader objDR;
            try
            {
                objCon.Open();
                objDR = objCmd.ExecuteReader();
                objDR.Read();
                // 顯示病人資料
                txtID.Text = objDR["PatientID"].ToString();
                txtName.Text = objDR["Name"].ToString();
                txtDOB.Text = objDR["DateOfBirth"].ToString();
                txtAddress.Text = objDR["Address"].ToString();
                txtPostCode.Text = objDR["PostCode"].ToString();
                txtPhone.Text = objDR["Phone"].ToString();
                objDR.Close();
            }
            catch (Exception ex) {
                lblMessage.Text = "錯誤! 無法讀取病人資料! " + ex.ToString();
            }
            finally { objCon.Close(); }
        }
        else
        {
            txtName.Text = "";
            txtDOB.Text = "";
            txtAddress.Text = "";
            txtPostCode.Text = "";
            txtPhone.Text = "";
        }
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string strSQL;
        SqlConnection objCon = new SqlConnection(strDbCon);
        // 建立插入記錄的SQL指令
        strSQL = "INSERT INTO Aptment (";
        strSQL += "PatientID, DateOfAptment, Time) ";
        strSQL += "VALUES (" + txtID.Text + ",";
        strSQL += "'" + calDentist.SelectedDate.ToShortDateString();
        strSQL += "','" + ddlApointment.SelectedItem.Value + "')";
        SqlCommand objCmd = new SqlCommand(strSQL, objCon);
        int affectedRows = 0;
        try
        {
            objCon.Open();
            // 執行SQL指令新增記錄
            affectedRows = objCmd.ExecuteNonQuery();
            lblMessage.Text = affectedRows + "筆記錄完成預約!";
            Response.Redirect("Default.aspx");
        }
        catch (Exception ex) {
            lblMessage.Text = "對不起! 無法執行你的操作 " + ex.ToString();
        }
        finally { objCon.Close(); }
    }

    protected void viewAp_RowDeleted(object sender, GridViewDeletedEventArgs e)
    {
        Response.Redirect("Default.aspx");
    }
}