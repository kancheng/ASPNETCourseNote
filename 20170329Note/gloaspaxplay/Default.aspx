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
                    <td colspan="2">
                        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Button ID="Button1" runat="server" Text="更新網頁" />
                    </td>
                    <td>
                        <asp:Button ID="Button2" runat="server" Text="結束Session" OnClick="Button2_Click" />
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
