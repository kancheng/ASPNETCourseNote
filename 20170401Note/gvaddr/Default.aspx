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
        <div><h2>檢視</h2></div>
        <hr />
		</asp:Label>
                <asp:GridView ID="GridView1" runat="server" Width="100%"  AllowPaging="True" AllowSorting="True" AutoGenerateColumns="False" GridLine="None" DataKeyNames="No" DataSourceID="SqlDataSource1" Height="227px" PageSize="4" GridLines="None">
                    <Columns>
                        <asp:CommandField ShowEditButton="True" />
                        <asp:BoundField DataField="No" HeaderText="No" ReadOnly="True" SortExpression="No" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:BoundField DataField="Address" HeaderText="Address" SortExpression="Address" />
                        <asp:BoundField DataField="Telephone" HeaderText="Telephone" SortExpression="Telephone" />
                        <asp:BoundField DataField="Birthday" HeaderText="Birthday" SortExpression="Birthday" />
                        <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
                    </Columns>
                    <PagerStyle Width="0px" />
            </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [AddressBooks] WHERE [No] = @No" InsertCommand="INSERT INTO [AddressBooks] ([No], [Name], [Address], [Telephone], [Birthday], [Email]) VALUES (@No, @Name, @Address, @Telephone, @Birthday, @Email)" SelectCommand="SELECT * FROM [AddressBooks]" UpdateCommand="UPDATE [AddressBooks] SET [Name] = @Name, [Address] = @Address, [Telephone] = @Telephone, [Birthday] = @Birthday, [Email] = @Email WHERE [No] = @No">
                    <DeleteParameters>
                        <asp:Parameter Name="No" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="No" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Telephone" Type="String" />
                        <asp:Parameter Name="Birthday" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Address" Type="String" />
                        <asp:Parameter Name="Telephone" Type="String" />
                        <asp:Parameter Name="Birthday" Type="String" />
                        <asp:Parameter Name="Email" Type="String" />
                        <asp:Parameter Name="No" Type="String" />
                    </UpdateParameters>
            </asp:SqlDataSource>
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
