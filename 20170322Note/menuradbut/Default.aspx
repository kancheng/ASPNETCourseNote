<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">
        .style2 {
            width: 200px;
        }
        .style4 {
            width: 200px;
        }
        .style3 {
            width: 200px;
        }

        .hy-ctr {
            text-align:center;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div style = "text-align:center;" >
        <h2>Menu</h2>
            <table class="hy-ctr">
                <tr>
                    <td class="style2 hy-ctr">
                        <asp:RadioButton ID="rdbRare" runat="server" GroupName="Beef" Text="三分熟" />
                    </td>
                    <td class="style4 hy-ctr">
                        <asp:RadioButton ID="rdbMedium" runat="server" GroupName="Beef" Text="五分熟" />
                    </td>
                    <td class="style3 hy-ctr">
                        <asp:RadioButton ID="rdbMedWell" runat="server" GroupName="Beef" Text="七分熟" />
                    </td>
                    <td class="style3 hy-ctr">
                        <asp:RadioButton ID="rdbWellDone" runat="server" GroupName="Beef" Text="全熟" />
                    </td>
                </tr>
                <tr>
                    <td colspan="2">
                        <asp:Button ID="Button1" runat="server" Text="選擇" Width="150px" OnClick="Button1_Click" />
                    </td>
                    <td colspan="2">
                        <asp:Label ID="lblOutput" runat="server" BackColor="Black" BorderStyle="Ridge" Font-Bold="True" Font-Size="Larger" ForeColor="White" Height="23px" Width="142px"></asp:Label>
                    </td>
                </tr>
            </table>
    </div>
    </form>
</body>
</html>
