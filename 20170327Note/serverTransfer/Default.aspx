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
                <h1>Transfer</h1>
                <br />
            </div>
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
                <br /><!-- 1 -->
                <div>
                    <div>
                        <h2>Response.Redirect</h2>
                    </div>
                    <br />
                    <div>
                    <asp:Button ID="Button1" runat="server" Text="Google" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
                        <span style="margin-left:3em"></span>
                    <asp:Button ID="Button2" runat="server" Text="FaceBook" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
                        <span style="margin-left:3em"></span>
                    <asp:Button ID="Button3" runat="server" Text="Microsoft" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
                    </div>
                </div>
                <br /><!-- 2 -->
                <div>
                    <div>
                        <h2>Server.Transfer</h2>
                    </div>
                    <br />
                    <div>
                    <asp:Button ID="Button4" runat="server" Text="Google" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
                        <span style="margin-left:3em"></span>
                    <asp:Button ID="Button5" runat="server" Text="FaceBook" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
                        <span style="margin-left:3em"></span>
                    <asp:Button ID="Button6" runat="server" Text="Microsoft" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
                    </div>
                </div>
            </div>
                <br />
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
