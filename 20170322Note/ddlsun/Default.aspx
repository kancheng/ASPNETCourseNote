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
        .style3
        {
            height: 26px;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table class="style1">
                <tr>
                    <td><span>選擇使用者名稱:</span></td>
                </tr>
                <tr>
                    <td class="style3">
                        <asp:DropDownList ID="ddlNames" runat="server" Height="20px" Width="130px" AutoPostBack="True" OnSelectedIndexChanged="ddlNames_SelectedIndexChanged">
                            <asp:ListItem Value="001">Haoye</asp:ListItem>
                            <asp:ListItem Value="002">Jhen</asp:ListItem>
                            <asp:ListItem Value="003">Jeff</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="lblOutput" runat="server" BorderStyle="Ridge" Font-Size="Larger" ForeColor="Red" Height="25px" Width="260px"></asp:Label>
                        &nbsp;&nbsp;&nbsp;&nbsp; </td>
                </tr>
            </table>
   
    </div>
    </form>
</body>
</html>
