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
        <h1>My Github</h1>
        <br />
        <asp:Image ID="Image1" runat="server" ImageUrl="~/github.gif" />
        <br />
        <br />
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="https://github.com/kancheng/ASPNETCourseNote">https://github.com/kancheng/ASPNETCourseNote</asp:HyperLink>
        <br />
    
    </div>
    </form>
</body>
</html>
