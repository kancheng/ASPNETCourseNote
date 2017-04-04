<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="main.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Label ID="Label1" runat="server" Text="Label" CssClass="lblStyle"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Button" CssClass="btnStyle" />
            <br />
            <br />
            <asp:GridView ID="GridView1" runat="server" CssClass="gridStyle">
            </asp:GridView>
        </div>
    </form>
</body>
</html>
