﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
                        <asp:Button ID="Button1" runat="server" Text="刪除Cookie" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
                    </td>
                </tr>
            </table>   
    </div>
    </form>
</body>
</html>
