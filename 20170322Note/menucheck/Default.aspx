<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 50%;
        }
        .style5
        {
            width: 300px;
        }
        .style3
        {
            width: 100px;
        }
        .style4
        {
            width: 300px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table class="style1" width="100">
                <tr>
                    <td class="style5">
                        <asp:CheckBox ID="chkOriginal" runat="server" Text="原味披薩" />
                    </td>
                    <td class="style3">數量:</td>
                    <td class="style4">
                        <asp:TextBox ID="txtQuantity" runat="server">1</asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:CheckBox ID="chkBeef" runat="server" Text="牛肉披薩" />
                    </td>
                    <td colspan="2" rowspan="2">
                        <asp:Button ID="Button1" runat="server" Text="選擇" Width="263px" OnClick="Button1_Click" />
                    </td>
                </tr>
                <tr>
                    <td class="style5">
                        <asp:CheckBox ID="chkSeaFood" runat="server" Text="海鮮披薩" />
                    </td>
                </tr>
                <tr>
                    <td colspan="3">
                        <asp:Label ID="lblOutput" runat="server" BackColor="Black" BorderStyle="Ridge" ForeColor="White" Height="20px" Width="339px"></asp:Label>
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
