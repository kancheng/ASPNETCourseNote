﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table class="style1">
                <tr>
                    <td>
                        <asp:ListBox ID="lstNames" runat="server" Height="79px" Width="132px"></asp:ListBox>
                    </td>
                    <td>
                        <asp:Button ID="Button1" runat="server" Height="28px" Text="選擇" Width="71px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Label ID="lblOutput" runat="server" ForeColor="Blue"></asp:Label>
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
