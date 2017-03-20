<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body style="height: 24px">
    <form id="form1" runat="server">
    <div style="height: 259px">

        <asp:Panel ID = "Panel1" runat = "server" GroupingText = "圖書資料" Height="115px">
            <asp:Label ID="Label1" runat="server" Text="Hi! ASP.NET" BackColor="#006600" ForeColor="Red"></asp:Label>

        </asp:Panel>
        <asp:Button ID="Button1" runat="server" Text="Hide" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
