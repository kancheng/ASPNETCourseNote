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

<link href="Bootstrap/bootstrap.min.css" rel="stylesheet" />
</head>
<body style = "bg-color">
	<div style = "text-align:center;">
		<form id = "form1" runat = "server">

		<div>
			<br />
			<h1>SQL</h1>
		</div>
			<br />
		<div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">

			<br />
		</div>
        <div>
            <asp:DropDownList ID="ddlmajors" runat="server" DataSourceID="SqlDataSource1" DataTextField="major" DataValueField="major" AutoPostBack="True" Height="61px" Width="572px" Font-Names="Microsoft JhengHei" Font-Size="X-Large" >
                        </asp:DropDownList>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT DISTINCT [major] FROM [Students] ORDER BY [major]"></asp:SqlDataSource>
        </div>
                <br /><!-- 2 -->
		<div>
			<br />
			<asp:Button ID="Button1" runat="server" Text="Search" CssClass = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
		</div>
			<br />
	<!-- 1 Panel -->
		<asp:Panel ID="Panel1" runat="server">
		<div class ="alert alert-info" style = "text-align:center; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F">
		</asp:Label>
		<br />
		</div>
		</asp:Panel>
                <br />


	<!-- 2 Panel -->

		<asp:Panel ID="Panel2" runat="server" Visible="False">
		<div class ="alert alert-danger" style = "text-align:left; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label2" runat="server" style =" font-size:25px;" ForeColor="#A94442">
		</asp:Label>
		<br />
		</div>
		</asp:Panel>
		<br />


	<!-- 3 Panel -->

		<asp:Panel ID="Panel3" runat="server" Visible="False">
		<div class ="alert alert-default" style = "text-align:left; width:50%; margin:0 auto;">
                <br />
			<asp:Label ID="Label3" runat="server" style =" font-size:25px;" ForeColor="#333333">
			</asp:Label>
                <br />
		</div>
		</asp:Panel>
		<br />

		</form>
	</div>
</body>
</html>
