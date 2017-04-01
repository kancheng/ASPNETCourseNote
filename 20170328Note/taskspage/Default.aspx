<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style = "text-align:center">
            <h1>Tasks</h1>
        <br />
        <div>
            <asp:RadioButton ID="RadioButton1" runat="server" OnCheckedChanged="RadioButton1_CheckedChanged" GroupName="Product" Text="Insert" />
            &nbsp;
            <asp:RadioButton ID="RadioButton2" runat="server" OnCheckedChanged="RadioButton2_CheckedChanged" GroupName="Product" Text="Delete" />
            &nbsp;
            <asp:RadioButton ID="RadioButton3" runat="server" OnCheckedChanged="RadioButton3_CheckedChanged" GroupName="Product" Text="Modify" />
            &nbsp;
            <asp:RadioButton ID="RadioButton4" runat="server" OnCheckedChanged="RadioButton4_CheckedChanged" GroupName="Product" Text="Query" />
        </div>
        <div>

            Number&nbsp;:&nbsp;<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            Data&nbsp;:&nbsp;<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>

        </div>
        <div>
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        </div>
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
