<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultTest.aspx.cs" Inherits="DefaultTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div style = "text-align:center">
    <h1> Array Practice</h1>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="187px">A</asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-top: 0px" Text="Commit" Width="105px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Hi ASP.NET "></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
