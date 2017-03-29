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
        .style2
        {
            width: 142px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <table class="style1">
                <tr>
                    <td class="style2"><span>使用者名稱:</span></td>
                    <td>
                        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Button ID="Button1" runat="server" Text="送出" OnClick="Button1_Click" />
                    </td>
                    <td>
                        <asp:CustomValidator ID="validCustom" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="使用者名稱格式錯誤!" ForeColor="Red" OnServerValidate="validCustom_ServerValidate"></asp:CustomValidator>
                        <br />
                    </td>
                </tr>
                <tr>
                    <td class="style2">
                        <asp:Label ID="lblOutput" runat="server"></asp:Label>
                    </td>
                    <td>&nbsp;</td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
