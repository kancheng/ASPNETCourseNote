<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type = "text/css">        
        .txtStyle {
            font-size: large;
            font-weight: bold;
            color: #FF0000;
            border: medium dotted #0000FF;
        }
        .docStyle {
            color: #008000;
            background-color: #FFFF00;
        }
        .bgStyle {
            color: #008000;
        }
    </style>
</head>
<body class = "bgStyle">
    <form id="form1" runat="server">
        <br />
    <div class = "txtStyle" >txtStyle</div>
        <br />
    <div class = "docStyle">docStyle</div>
        <br />
        <div class="docStyle">
                    <br />
            <asp:TextBox ID="TextBox1" runat="server" CssClass="txtStyle">Test CSS OwO///</asp:TextBox>
                    <br />
        </div>
    </form>
</body>
</html>
