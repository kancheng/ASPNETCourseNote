<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" Theme="" StyleSheetTheme="MyTheme" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <br />
            <asp:Label ID="Label1" runat="server" BackColor="Green" ForeColor="Yellow" Text="我的ASP.NET網站"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="我的ASP.NET網站" SkinID="BlueLabel"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="我的ASP.NET網站" SkinID="GreenLabel"></asp:Label>
            <br />
            <br />
            <asp:Label ID="Label4" runat="server" Text="我的ASP.NET網站" SkinID="RedLabel"></asp:Label>
			<br />
			<br />
            <asp:Label ID="Label5" runat="server" Text="我的ASP.NET網站"></asp:Label>
    </div>
    </form>
</body>
</html>
