using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ShoppingCart : System.Web.UI.Page
{
    private double total = 0;
    private Boolean hasItem = false;

    protected void Page_Init(object sender, EventArgs e)
    {
        // 宣告WHERE子句的IN條件
        string where = "WHERE [BookID] IN (";
        bool isFirst = true;
        // 取出所有Cookie
        foreach (string bookItem in Request.Cookies)
        {
            // 是否是購物車的Cookie
            if (bookItem.StartsWith("Book"))
            {
                if (isFirst) // 第1次
                {
                    where += "'" + Request.Cookies[bookItem]["ID"] + "'";
                    isFirst = false;
                }
                else
                {
                    where += ", '" + Request.Cookies[bookItem]["ID"] + "'";
                }
                hasItem = true;
            }
        }
        where += ")"; // 完成WHERE子句
        // 更改資料來源控制項的SELECT指令
        if (hasItem)
            SqlDataSource1.SelectCommand += where;
        else
            SqlDataSource1.SelectCommand += "WHERE [BookID] IN ('0000')";
    }

    protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
    {
        int pos = 0;
        string bookID;
        if (e.CommandName == "DelItem")
        {
            pos = Convert.ToInt32(e.CommandArgument); // 哪一列圖書
            // 取得書號
            bookID = GridView1.DataKeys[pos].Value.ToString();
            // 刪除Cookie
            Response.Cookies[("Book" + bookID).Trim()].Expires = DateTime.Today.AddDays(-365);
            Response.Redirect("ShoppingCart.aspx");
        }
    }

    protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
    {
        int quantity;
        double subtotal, price;
        // 檢查是否是資料列
        if (e.Row.RowType == DataControlRowType.DataRow)
        {
            // 指定數量
            e.Row.Cells[4].Text = Request.Cookies[("Book" + e.Row.Cells[1].Text).Trim()]["Quantity"];
            price = Convert.ToDouble(e.Row.Cells[3].Text.Substring(3));
            quantity = Convert.ToInt32(e.Row.Cells[4].Text);
            subtotal = price * quantity;   // 小計
            total += subtotal;  // 計算總價
            e.Row.Cells[5].Text = subtotal.ToString("c");
        }
        if (e.Row.RowType == DataControlRowType.Footer)
        {
            e.Row.Cells[5].Text = total.ToString("c");
        }
    }
}