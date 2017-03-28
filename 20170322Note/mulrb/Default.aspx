﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 300px;
        }
        .style2
        {
            width: 200px;
        }
        .style4
        {
            width: 200px;
        }
        .style3
        {
            width: 200px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <table class="style1">
                <tr>
                    <td class="style2">
                        <asp:RadioButton ID="rdbRare" runat="server" GroupName="Beef" Text="三分熟" AutoPostBack="True" OnCheckedChanged="rdbRare_CheckedChanged" />
                    </td>
                    <td class="style4">
                        <asp:RadioButton ID="rdbMedium" runat="server" GroupName="Beef" Text="五分熟" AutoPostBack="True" OnCheckedChanged="rdbMedium_CheckedChanged" />
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdbMedWell" runat="server" GroupName="Beef" Text="七分熟" AutoPostBack="True" OnCheckedChanged="rdbMedWell_CheckedChanged" />
                    </td>
                    <td class="style3">
                        <asp:RadioButton ID="rdbWellDone" runat="server" GroupName="Beef" Text="全熟" AutoPostBack="True" OnCheckedChanged="rdbWellDone_CheckedChanged" />
                    </td>
                </tr>
                <tr>
                    <td colspan="4">
                        <asp:Label ID="lblOutput" runat="server" BackColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Size="Larger" ForeColor="White" Height="23px" Width="281px"></asp:Label>
                    </td>
                </tr>
            </table>
    
    </div>
    </form>
</body>
</html>

