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
            text-align:center;
        }
        .auto-style1 {
            width: 289px;
        }
        .auto-style2 {
            height: 202px;
        }
    </style>
</head>
<body style="height: 618px">
    <form id="form1" runat="server">
    <div class="style1">
           <h1>Textbox player</h1>
        <br />
        <table class="style1">
            <tr>
                <td class="auto-style1">姓名 :</td>
                <td>
                    <asp:TextBox ID="TextBox1" runat="server" Width="100%">Haoye</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">密碼 :</td>
                <td>
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Width="100%"></asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">身高 :</td>
                <td>
                    <asp:TextBox ID="TextBox3" runat="server" Width="100%">173</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td class="auto-style1">體重 :</td>
                <td>
                    <asp:TextBox ID="TextBox4" runat="server" Width="100%">90</asp:TextBox>
                </td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" style="text-align: center" Text="submit" Width="100%" OnClick="Button1_Click" />
                </td>
            </tr>
            <tr>
                <td colspan="2" class="auto-style2">
                    <asp:TextBox ID="TextBox5" runat="server" Height="170px" ReadOnly="True" TextMode="MultiLine" Width="100%"></asp:TextBox>
                </td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
