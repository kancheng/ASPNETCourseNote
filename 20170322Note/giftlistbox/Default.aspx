<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

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
    <div style = "text-align:center">
        <h1>Gifts</h1>
        <br />
            <table class="style1">
                <tr>
                    <td><span>選擇免費的禮物(複選):</span></td>
                </tr>
                <tr>
                    <td>
                        <asp:ListBox ID="lstGifts" runat="server" OnSelectedIndexChanged="lstGifts_SelectedIndexChanged" SelectionMode="Multiple">
                            <asp:ListItem Selected="True" Value="1">保護貼</asp:ListItem>
                            <asp:ListItem Selected="True" Value="2">觸控筆</asp:ListItem>
                            <asp:ListItem Selected="True" Value="3">背蓋</asp:ListItem>
                            <asp:ListItem Selected="True" Value="4">手機套</asp:ListItem>
                        </asp:ListBox>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOutput" runat="server" Font-Size="Larger" Width="260px"></asp:Label>
                        　　<asp:Button ID="Button1" runat="server" Height="32px" Text="選擇" Width="63px" OnClick="Button1_Click" />
                    </td>
                </tr>
            </table>
    
    </div>
    </form>
</body>
</html>
