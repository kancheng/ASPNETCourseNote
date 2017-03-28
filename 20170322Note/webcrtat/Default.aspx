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
                <h1>Create account</h1>
                <br />
            </div>
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
                <br /><!-- 1 -->
                <div>
                    <div>
                        使用者名稱&nbsp;:&nbsp;
                        <asp:TextBox ID="TextBox1" runat="server" class = "btn-text"></asp:TextBox>
                    </div>
                </div>
                <br /><!-- 2 -->
                <div>
                    <div>
                        密碼&nbsp;:&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server" class = "btn-text" AutoPostBack="True" TextMode="Password"></asp:TextBox>
                    </div>
                </div>
                <br /><!-- 3 -->
                <div>
                    <div>
                        姓名&nbsp;:&nbsp;
                        <asp:TextBox ID="TextBox3" runat="server" class = "btn-text"></asp:TextBox>
                    </div>
                </div>
                <br /><!-- 4 -->
                <div>
                    <div>
                        性別&nbsp;:&nbsp;
                        <span style="margin-left:3em"></span>
                        <asp:RadioButton ID="RadioButton1" runat="server" Text="男" GroupName="gder" AutoPostBack="True" OnCheckedChanged="RadioButton1_CheckedChanged" />
                        <span style="margin-left:3em"></span>
                        <asp:RadioButton ID="RadioButton2" runat="server" Text="女" GroupName="gder" AutoPostBack="True" OnCheckedChanged="RadioButton2_CheckedChanged" />
                    </div>
                </div>
                <br /><!-- 5 -->
                <div>
                    <div>
                        地址&nbsp;:&nbsp;
                        <asp:TextBox ID="TextBox4" runat="server" class = "btn-text"></asp:TextBox>
                    </div>
                </div>
                <br /><!-- 6 -->
                <div>
                    <div>
                        電話&nbsp;:&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server" class = "btn-text"></asp:TextBox>
                    </div>
                </div>
                <br /><!-- 7 -->
                <div>
                    <div>
                    
                        生日&nbsp;:&nbsp;<span style="margin-left:3em"></span><asp:Button ID="Day" runat="server" Text="Join" class = "btn btn-default btn-wdt" OnClick="Day_Click" />
                    </div>
                    <div>
                        <asp:Panel ID="Panel1" runat="server" Visible="False">                        
                        <span style="margin-left:3em"></span>
                        年&nbsp;:&nbsp;<asp:DropDownList ID="DropDownList1" runat="server" class ="btn btn-default" AutoPostBack="True" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged"></asp:DropDownList>
                        <span style="margin-left:3em"></span>
                        月&nbsp;:&nbsp;<asp:DropDownList ID="DropDownList2" runat="server" class ="btn btn-default" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged"></asp:DropDownList>
                        <span style="margin-left:3em"></span>
                        <br />
                        <asp:Calendar ID="Calendar1" runat="server" class ="btn btn-default" OnSelectionChanged="Calendar1_SelectionChanged" Visible="True"></asp:Calendar>
                        <br />
                        <asp:TextBox ID="daytxtb" runat="server" class = "btn-text" OnTextChanged="daytxtb_TextChanged"></asp:TextBox>
                        </asp:Panel>

                    </div>
                </div>
                <br /><!-- 8 -->
                <div>
                    <div>
                        E-mail&nbsp;:&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server" class = "btn-text"></asp:TextBox>
                    </div>
                </div>
            </div>
                <br />
            <div>
                    <asp:Button ID="Button1" runat="server" Text="Submit" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
            </div>
                <br />
            <asp:Panel ID="Panel2" runat="server" Visible="False">
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
