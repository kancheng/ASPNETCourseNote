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
			<h1>SQL</h1>
		</div>
		<div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">

		</div>

			<br />
		<asp:Panel ID="Panel1" runat="server">
		<div class ="alert alert-info" style = "text-align:center; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F">
        <div><h2>查詢</h2></div>
        <hr />
		</asp:Label>
		<br />

            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="No" DataSourceID="SqlDataSource1" GridLines="None" HorizontalAlign="Center" PageSize="5" Width="50%">
                <Columns>
                    <asp:CommandField ShowSelectButton="True" />
                    <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                </Columns>
            </asp:GridView>

            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [No], [Name] FROM [AddressBooks]"></asp:SqlDataSource>
            <br />
        <hr />
		<asp:Label ID="Label4" runat="server" style =" font-size:25px;" ForeColor="#31708F">
        <div><h2>檢視</h2></div>
        <hr />
		</asp:Label>
            <br />

            <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="50%" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="No" DataSourceID="SqlDataSource2" GridLines="None" HorizontalAlign="Center">
                <Fields>
                    <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                    <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                    <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                    <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
                    <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                    <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                </Fields>
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [AddressBooks] WHERE ([No] = @No)">
                <SelectParameters>
                    <asp:ControlParameter ControlID="GridView1" Name="No" PropertyName="SelectedValue" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>

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
