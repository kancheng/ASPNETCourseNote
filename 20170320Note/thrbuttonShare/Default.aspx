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
        <h1> Event Practice</h1>
        三個 Button 共用 Event<br />
        <br />
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Hi, Jhen." Width="80px" />
&nbsp;
        <asp:Button ID="Button2" runat="server" Text="Hi, Haoye." OnClick="Button1_Click" Width="80px" />
&nbsp;
        <asp:Button ID="Button3" runat="server" Text="Hi, Jeff." OnClick="Button1_Click" Width="80px" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server"></asp:Label>
        <br />
        <br />
    
    </div>
    </form>
</body>
</html>
