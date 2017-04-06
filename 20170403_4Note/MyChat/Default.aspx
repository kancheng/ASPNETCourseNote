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
            color: #FFFFFF;
            background-color: #0066FF;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table class="style1">
                <tr>
                    <td bgcolor="Blue" class="style2" style="text-align: center">聊天訊息</td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:ScriptManager ID="ScriptManager1" runat="server">
                        </asp:ScriptManager>
                        <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                            <ContentTemplate>
                                <asp:Label ID="lblOutput" runat="server" Font-Size="Small" ForeColor="Maroon"></asp:Label>
                                <asp:Timer ID="Timer1" runat="server" Interval="3000" ontick="Timer1_Tick">
                                </asp:Timer>
                            </ContentTemplate>
                        </asp:UpdatePanel>
                    </td>
                </tr>
                <tr>
                    <td>
                        <hr />
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:Panel ID="Panel1" runat="server">
                            <table class="style1">
                                <tr>
                                    <td bgcolor="#99CCFF" style="background-color: #0066FF"><span class="style3">使用者名稱 :&nbsp;</span>&nbsp;<asp:TextBox ID="txtUsername" runat="server"></asp:TextBox>
                                        &nbsp;
                                        <asp:Button ID="Button2" runat="server" onclick="Button2_Click" Text="登入" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                        <asp:Panel ID="Panel2" runat="server">
                            <table class="style1">
                                <tr>
                                    <td bgcolor="#9999FF">
                                        <asp:Label ID="lblPrompt" runat="server" ForeColor="Maroon"></asp:Label>
                                        &nbsp;
                                        <asp:TextBox ID="txtMsg" runat="server" Width="336px"></asp:TextBox>
                                        &nbsp;
                                        <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="送出訊息" />
                                    </td>
                                </tr>
                            </table>
                        </asp:Panel>
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
