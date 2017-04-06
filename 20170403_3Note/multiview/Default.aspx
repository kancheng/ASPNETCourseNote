<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
        <br />
            <asp:MultiView ID="MultiView1" runat="server">
                <asp:View ID="View1" runat="server">
                    <div>
                       <span> 使用者名稱 : </span>
                        <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Button1" runat="server" Text="下一步" Width="15 %" CommandName="SwitchViewByID" CommandArgument="View2" />
                    </div>
                </asp:View>
                <asp:View ID="View2" runat="server">
                    <div>
                       <span> 姓名 : </span>
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Button2" runat="server" Text="前一步" Width="15 %" CommandName="SwitchViewByID" CommandArgument="View1" />
                        <asp:Button ID="Button3" runat="server" Text="下一步"  Width="15 %" CommandName="SwitchViewByID" CommandArgument="View3"/>
                    </div>
                </asp:View>
                <asp:View ID="View3" runat="server">
                    <div>
                       <span> 密碼 : </span>
                        <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                    </div>
                    <div>
                        <asp:Button ID="Button4" runat="server" Text="前一步"  Width="15 %" CommandName="SwitchViewByID" CommandArgument="View2"/>
                        <asp:Button ID="Button5" runat="server" Text="送出"  Width="15 %" OnClick="Button5_Click"/>
                    </div>
                </asp:View>
            </asp:MultiView>
        <br />
            <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>

