<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <script type = "text/javascript" src = "js/main.js"></script>
		<link rel = "stylesheet" type = "text/css" href = "css/main.css">
        <link rel = "stylesheet" href = "css/bootstrap.min.css">
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body style ="bg-color">
            <br />
    <form id="form1" runat="server">
    <div style = "text-align:center">
        <h1>Order</h1>
        <br />
        <div style = "text-align:center;">
                        <asp:Panel ID="Panel1" runat="server" GroupingText="iPhone產品" Width="100%" >
                        <div style = "text-align:center;">
                            <asp:CheckBoxList ID="chkiPhones" runat="server" Width="100%">
                                <asp:ListItem Value="21000">iPhone 6 $21000</asp:ListItem>
                                <asp:ListItem Value="22000">iPhone 6 Plus $22000</asp:ListItem>
                                <asp:ListItem Value="24000">iPhone 6S $24000</asp:ListItem>
                                <asp:ListItem Value="26000">iPhone 6S Plus $26000</asp:ListItem>
                            </asp:CheckBoxList>
                        </div>
                        </asp:Panel>
        </div>
        <br />
        <div>
                        <asp:Panel ID="Panel2" runat="server" GroupingText="運送手續費" Width="100%">
                        <div style = "text-align:center;">
                            <asp:RadioButtonList ID="rdbShipment" runat="server" Width="100%">
                                <asp:ListItem Selected="True" Value="5">快遞 5%</asp:ListItem>
                                <asp:ListItem Value="10">貨到付款 10%</asp:ListItem>
                            </asp:RadioButtonList>
                        </div>
                        </asp:Panel>
        </div>
        <br />
        <div>
        <br />
                    <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="計算" class ="btn btn-primary btn-wdt"/>
        </div>
        <div>
                    <asp:Label ID="lblOutput" runat="server" Font-Size="Larger" ForeColor="Blue" Width="260px"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
