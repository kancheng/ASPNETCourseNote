<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <script type = "text/javascript" src = "js/main.js"></script>
        <link rel = "stylesheet" type = "text/css" href = "css/main.css">
        <link rel = "stylesheet" href = "css/bootstrap.min.css">
    <title></title>
</head>
<body class ="bg-color">
    <div style = "text-align:center;">
        	<br>
			<h1>Hi</h1>
        <form id="form1" runat="server">
            <div>
                <div>
                    <asp:TextBox ID="txtInput" runat="server" Width="224px" AutoPostBack="True" OnTextChanged="txtInput_TextChanged"></asp:TextBox>
                </div>
                <br />
                <div>
                    <asp:Label ID="lblOutput" runat="server" Height="36px" Width="217px"></asp:Label>
                </div>
            </div>
        </form>
    </div>
</body>
</html>
