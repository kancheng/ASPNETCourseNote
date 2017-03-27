<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<script type = "text/javascript" src = "js/main.js"></script>
		<link rel = stylesheet type = "text/css" href = "css/main.css">
		<link rel = "stylesheet" href = "css/bootstrap.min.css">

    <title></title>
    <style type="text/css">
        .hyfont {font-family: "Microsoft Jhenghei";}
        .hywdt {Width: 20%;}
    </style>
</head>
<body style = "bg-color hyfont">
    <form id="form1" runat="server">
    <div style = "text-align:center;" >
                    <br />
                    <br />
        <h2>Please sign in</h2>
        <div>
            <asp:TextBox ID = "txtName" runat = "server" class = "btn-text hywdt">User name</asp:TextBox>
            <br />
            <asp:TextBox ID = "txtPass" runat = "server" class = "btn-text hywdt">Password</asp:TextBox>
            <br />
            <br />
            <asp:Button ID = "Button2" runat = "server" Text = "Sign in" class = "btn btn-primary hywdt" />
        </div>
            <br />
        <div>
            <asp:Label ID = "lblOutput" runat = "server" ForeColor = "#666666"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
