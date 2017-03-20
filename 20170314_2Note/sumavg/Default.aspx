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
        <h1>Calculate</h1>
        <br />
                Range 71, 62, 58, 86, 92 . <br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Max" />&nbsp;&nbsp;
        <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Min" />&nbsp;&nbsp;
        <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="Sum" />&nbsp;&nbsp;
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Average" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
    </div>
    </form>
</body>
</html>
