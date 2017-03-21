using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DefaultTest : System.Web.UI.Page
{


    string[,] Product  = new string[5, 2];
    protected void Page_Load(object sender, EventArgs e)
    {
        TextBox1.Attributes.Add("style", "font-size:xx-small;color:#666666"); /* 順便改變字的大小顏色 */
        TextBox1.Attributes.Add("onFocus", "this.value=''"); /* 一點擊TextBox1後，裡面的字馬上被清空 */
        Product[0, 0] = "A"; Product[0, 1] = "2.98";
        Product[1, 0] = "B"; Product[1, 1] = "3.50";
        Product[2, 0] = "C"; Product[2, 1] = "4.66";
        Product[3, 0] = "D"; Product[3, 1] = "1.53";
        Product[4, 0] = "E"; Product[4, 1] = "9.98";
    }
    /* practice call by reference. */
    protected void Button1_Click(object sender, EventArgs e)
    {

        string choice = TextBox1.Text;
        int index = -1;
        string price = getPrice(choice, ref index);
        Label1.Text = ("The price is :" + price + "and The index is at " + index +"th row");
    }
    string getPrice(string choice, ref int index)
    {
        string price = "0.0";
        for (int i = 0; i < 5; i++)
        {
            if (choice == Product[i, 0])
                price = Product[i, 1];
		index = i;
        }
        return price;
    }

    protected void Button2_Click(object sender, EventArgs e)
    {

    }
}