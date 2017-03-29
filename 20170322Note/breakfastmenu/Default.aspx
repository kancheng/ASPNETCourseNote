<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type = "text/javascript" src = "js/main.js"></script>
    <link rel = "stylesheet" type = "text/css" href = "css/main.css">
    <link rel = "stylesheet" href = "css/bootstrap.min.css">
    <link rel = "stylesheet" href = "css/bootstrap.css">
    <script src="js/bootstrap.min.js"></script>
    <title></title>
</head>
<body style = "bg-color">
    <div style = "text-align:center;">
        <form id = "form1" runat = "server">
            <div>
                <br />
                <h1>Menu</h1>
                <br />
            </div>
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
                <br /><!-- 1 -->
                <div>
                     <div>
                         <h2>主餐</h2>
                    </div>
                <br />
                    <div>
                        三明治&nbsp;:&nbsp;
                        <span style="margin-left:2em"></span>
                        <asp:RadioButton ID="RadioButton1" runat="server" GroupName="mainrb" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        <span style="margin-left:1em"></span>
                        <asp:TextBox ID="TextBox1" runat="server" class = "btn-text" style = "width: 10%;" OnTextChanged="TextBox1_TextChanged"></asp:TextBox>
                    </div>
                    <div>
                        漢堡&nbsp;:&nbsp;
                        <span style="margin-left:2em"></span>
                        <asp:RadioButton ID="RadioButton2" runat="server" GroupName="mainrb" OnCheckedChanged="RadioButton2_CheckedChanged" />
                        <span style="margin-left:1em"></span>
                        <asp:TextBox ID="TextBox2" runat="server" class = "btn-text" style = "width: 10%;" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
                    </div>
                </div>
                <br />
                <br /><!-- 2 -->
                <div>
                     <div>
                        <h2>飲料</h2>
                    </div>
                <br />
                    <div>
                        豆漿&nbsp;:&nbsp;
                        <span style="margin-left:2em"></span>
                        <asp:RadioButton ID="RadioButton3" runat="server" GroupName="drkrb" OnCheckedChanged="RadioButton3_CheckedChanged" />
                        <span style="margin-left:1em"></span>
                        <asp:TextBox ID="TextBox3" runat="server" class = "btn-text" style = "width: 10%;" OnTextChanged="TextBox3_TextChanged"></asp:TextBox>
                    </div>
                    <div>
                        奶茶&nbsp;:&nbsp;
                        <span style="margin-left:2em"></span>
                        <asp:RadioButton ID="RadioButton4" runat="server" GroupName="drkrb" OnCheckedChanged="RadioButton4_CheckedChanged" />
                        <span style="margin-left:1em"></span>
                        <asp:TextBox ID="TextBox4" runat="server" class = "btn-text" style = "width: 10%;" OnTextChanged="TextBox4_TextChanged"></asp:TextBox>
                        <span style="margin-left:3em"></span>
                        <asp:Button ID="BtPlus" runat="server" Text="Plus" class = " btn btn-default" style = "width: 5%;" OnClick="BtPlus_Click"/>
                        <div>
                            <asp:Panel ID="PanelPlus" runat="server" Visible="False">
                                <span style="margin-left:5em"></span>
                                    珍珠
                                <asp:TextBox ID="TextBox5" runat="server" class = "btn-text" style = "width: 10%;" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
                            </asp:Panel>
                        </div>
                    </div>
                </div>
            </div>
                <br />
            <div>
                    <asp:Button ID="Button1" runat="server" Text="Submit" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
            </div>
                <br />
            <asp:Panel ID="Panel1" runat="server">
            <div class ="alert alert-info" style = "text-align:left; width:50%; margin:0 auto;">
                <br />
                <asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F"></asp:Label>
                <br />
            </div>
            </asp:Panel>
        </form>
    </div>
</body>
</html>
