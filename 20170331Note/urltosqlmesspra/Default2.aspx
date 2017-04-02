<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default2.aspx.cs" Inherits="Default2" %>

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
			<h1>檢視</h1>
		</div>
		<div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
        </div>

	<!-- 1 Panel -->
		<asp:Panel ID="Panel1" runat="server" >
		<div class ="alert alert-info" style = "text-align:center; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F">
		</asp:Label>
            <hr>
 			<br />
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="sid" DataSourceID="SqlDataSource2" Width="100 %">
                            <Columns>
                                <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" SortExpression="sid" />
                                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                                <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
                                <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                            </Columns>
                        </asp:GridView>

			<br />
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                            
                            SelectCommand="SELECT * FROM [Students] WHERE ([major] LIKE '%' + @major + '%')" OnSelecting="SqlDataSource2_Selecting">
                            <SelectParameters>
                                <asp:QueryStringParameter Name="major" QueryStringField="Major" Type="String" />
                            </SelectParameters>
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
