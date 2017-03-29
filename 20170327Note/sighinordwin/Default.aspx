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
                <h1>Sign in</h1>
                <br />
            </div>
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
                <br /><!-- 1 -->
                <div>
                    <div>
                        使用者名稱&nbsp;:&nbsp;
                        <span style="margin-left:3em"></span>
                        <asp:TextBox ID="TextBox1" runat="server" class = "btn-text"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validNoSc" runat="server" ErrorMessage="  必須輸入使用者名稱 !" Display="Dynamic" ControlToValidate="TextBox1" ForeColor="#A94442">
                    </asp:RequiredFieldValidator>
                    </div>
                </div>
                <br /><!-- 2 -->
                <div>
                    <div>
                        使用者密碼&nbsp;:&nbsp;
                        <span style="margin-left:3em"></span>
                        <asp:TextBox ID="TextBox2" runat="server" class = "btn-text" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="validNoPasswd" runat="server" ErrorMessage="  必須輸入使用者密碼 !" Display="Dynamic" ControlToValidate="TextBox1" ForeColor="#A94442">
                    </asp:RequiredFieldValidator>
                    </div>
                </div>
                <br /><!-- 3 -->
                <div>
                    <div>
                        驗證密碼&nbsp;:&nbsp;
                        <span style="margin-left:3em"></span>
                        <asp:TextBox ID="TextBox3" runat="server" class = "btn-text"></asp:TextBox>
                        <asp:CompareValidator ID="validComp" runat="server" ControlToCompare="TextBox2" ControlToValidate="TextBox3" Display="Dynamic" ErrorMessage="兩次輸入的密碼不同!" ForeColor="#A94442">
                        </asp:CompareValidator>
                    </div>
                </div>
            </div>
                <br />
            <div>
                    <asp:Button ID="Button1" runat="server" Text="Submit" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
            </div>

                 <asp:ValidationSummary ID="validSummary" runat="server" ForeColor="#A94442" DisplayMode="List" HeaderText="驗證錯誤的資料" ShowMessageBox="True" />
                <br />
            <asp:Panel ID="Panel1" runat="server" Visible="False">
            <div class ="alert alert-info" style = "text-align:left; width:50%; margin:0 auto;">
                <br />
                <asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F"></asp:Label>
                <br />
            </div>
            </asp:Panel>
                <br />
            <asp:Panel ID="Panel2" runat="server" Visible="False">
            <div class ="alert alert-danger" style = "text-align:left; width:50%; margin:0 auto;">
                <br />
                <asp:Label ID="Label2" runat="server" style =" font-size:25px;" ForeColor="#A94442">
               </asp:Label>
                <br />
            </div>
            </asp:Panel>
        </form>
    </div>
</body>
</html>
