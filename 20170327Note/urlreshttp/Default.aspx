﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            URL網址:
            <asp:TextBox ID="txtURL" runat="server" Width="183px"></asp:TextBox>
            &nbsp;<asp:Button ID="Button1" runat="server" Text="轉址" OnClick="Button1_Click" />
    </div>
    </form>
</body>
</html>
