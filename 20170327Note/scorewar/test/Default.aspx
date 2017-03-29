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
    <div>
   
        <table class="style1">
            <tr>
                <td>姓名:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>密碼:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>身高:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>體重:</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td align="center" colspan="2">
                    <asp:Button ID="Button1" runat="server" style="text-align: center" Text="送出" />
                </td>
            </tr>
            <tr>
                <td colspan="2">&nbsp;</td>
            </tr>
        </table>
    
    </div>
    </form>
</body>
</html>
