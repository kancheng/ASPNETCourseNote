﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .bg-color {
	        background-color: #FDFDFD;
        }
        .style1
        {
            width: 100%;
        }
        .style2
        {
            width: 101px;
        }
    </style>
</head>
<body class ="bg-color">
    <form id="form1" runat="server" defaultbutton="Button1" defaultfocus="txtMessage">
    <div>
        <h1>Forum</h1>
            <table class="style1">
                <tr>
                    <td class="style2">留言：</td>
                    <td>
                        <asp:TextBox ID="txtMessage" runat="server" Height="71px" style="margin-left: 0px" TextMode="MultiLine" Width="145px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">姓名：</td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" Text="輸入" Width="106px" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="清除" Width="128px" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
            <asp:Label ID="lblOutput" runat="server" ForeColor="Blue"></asp:Label>

    </div>
    </form>
</body>
</html>
