<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DisplayPhoto.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <hr />
            <asp:Image ID="Image1" runat="server" BorderStyle="Double" BorderWidth="1px" Height="413px" Width="266px" />
            <hr />
            <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/Default.aspx">回到網路相簿</asp:HyperLink>
    </div>
    </form>
</body>
</html>
