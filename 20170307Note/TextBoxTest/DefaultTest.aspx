<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DefaultTest.aspx.cs" Inherits="DefaultTest" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:Label ID="Label1" runat="server" Font-Size="Large" Text="Hi ASP.NET "></asp:Label>
        <br />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" Height="59px" Width="187px"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" style="margin-top: 0px" Text="燒毀" Width="105px" />
    
    </div>
    </form>
</body>
</html>
