﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type = "text/javascript" src = "js/main.js"></script>
    <link rel = "stylesheet" type = "text/css" href = "css/main.css">
    <link rel = "stylesheet" href = "css/bootstrap.min.css">
    <link rel = "stylesheet" href = "css/bootstrap.css">
    <script src="js/bootstrap.min.js"></script>
    <title></title>
</head>
<body style = "bg-color">
    <div style = "text-align:center;">
        <form id = "form1" runat = "server">
            <div>
                <br />
                <h1>US to NT</h1>
                <br />
            </div>
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
                <br /><!-- 1 -->
                <div>
                        US&nbsp;:&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" class = "btn-text" AutoPostBack="True" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                </div>
            </div>
                <br />
            <asp:Panel ID="Panel1" runat="server">
            <div class ="alert alert-info" style = "text-align:left; width:50%; margin:0 auto;">
                <br />
                <asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F"></asp:Label>
                <br />
            </div>
            </asp:Panel>
        </form>
    </div>
</body>
</html>
