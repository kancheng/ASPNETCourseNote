﻿using System;
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

    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        if (ListBox1.SelectedIndex > -1) {
            Panel1.Visible = true;
            Label1.Text = "候選人 : " + ListBox1.SelectedItem.Value;
        }
    }
}

