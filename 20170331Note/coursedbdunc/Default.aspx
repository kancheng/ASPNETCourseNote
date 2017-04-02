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
            <div>
			<br />
                <asp:Button ID="inpbtn" runat="server" Text="Insert" CssClass = "btn btn-default btn-wdt10" OnClick="inpbtn_Click" />
                <span style="margin-left:3em"></span>
                <asp:Button ID="depbtn" runat="server" Text="Delete" CssClass = "btn btn-default btn-wdt10" OnClick="depbtn_Click" />
                <span style="margin-left:3em"></span>
                <asp:Button ID="mfpbtn" runat="server" Text="Modify" CssClass = "btn btn-default btn-wdt10" OnClick="mfpbtn_Click" />
                <span style="margin-left:3em"></span>
                <asp:Button ID="sepbtn" runat="server" Text="Search" CssClass = "btn btn-default btn-wdt10" OnClick="sepbtn_Click" />
            </div>
			<br />
		<div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">

            <asp:Panel ID="sep" runat="server" Visible="False">
                <br /><!-- Search -->
            <div>
			<div><h2>查詢</h2><br /></div>
                課號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="septxtid" runat="server" CssClass = "btn-text" >CS101</asp:TextBox>
                <br />
                <br />
                <asp:Button ID="searchbtn" runat="server" Text="Search" CssClass = "btn btn-primary btn-wdt30" OnClick="searchbtn_Click" />
            </div>
            </asp:Panel>

            <asp:Panel ID="inp" runat="server" Visible="False">
                <br /><!-- Insert -->
            <div>
			<div><h2>新增</h2><br /></div>
                課號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="intxtid" runat="server" CssClass = "btn-text" >CS103</asp:TextBox>
                <br />
                課名 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="intxtnm" runat="server" CssClass = "btn-text" >統計學</asp:TextBox>
                <br />
                學分 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="intxtcrd" runat="server" CssClass = "btn-text" >3</asp:TextBox>
                <br />
                <br />
                <asp:Button ID="insertbtn" runat="server" Text="Insert" CssClass = "btn btn-primary btn-wdt30" OnClick="insertbtn_Click" />
            </div>
            </asp:Panel>

            <asp:Panel ID="mfp" runat="server" Visible="False">
                <br /><!-- Modify -->
            <div>
			<div><h2>修改</h2><br /></div>
                課號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="mftxtid" runat="server" CssClass = "btn-text" >CS103</asp:TextBox>
                <br />
                課名 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="mftxtnm" runat="server" CssClass = "btn-text" >微積分</asp:TextBox>
                <br />
                學分 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="mftxtcrd" runat="server" CssClass = "btn-text" >9</asp:TextBox>
                <br />
                <br />
                <asp:Button ID="modifybtn" runat="server" Text="Modify" CssClass = "btn btn-primary btn-wdt30" OnClick="modifybtn_Click" />
            </div>
            </asp:Panel>

            <asp:Panel ID="dep" runat="server" Visible="False">
                <br /><!-- Delete -->
            <div>
			<div><h2>刪除</h2><br /></div>
                課號 :<span style="margin-left:3em"></span>
                <asp:TextBox ID="deletxtid" runat="server" CssClass = "btn-text" >S101</asp:TextBox>
                <br />
                <br />
                <asp:Button ID="deletebtn" runat="server" Text="Delete" CssClass = "btn btn-primary btn-wdt30" OnClick="deletebtn_Click" />
            </div>
            </asp:Panel>
		</div>

			<br />
	<!-- 1 Panel -->
		<asp:Panel ID="Panel1" runat="server">
		<div class ="alert alert-info" style = "text-align:center; width:50%; margin:0 auto;">
		<br />
		<asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F">
        <div><h2>檢視</h2></div>
        <hr>
		</asp:Label>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" GridLines="None" DataKeyNames="c_no" DataSourceID="SqlDataSource1" Width="100%">
                            <Columns>
                                <asp:BoundField DataField="c_no" HeaderText="c_no" ReadOnly="True" SortExpression="c_no" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                                <asp:BoundField DataField="credits" HeaderText="credits" SortExpression="credits" />
                            </Columns>
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Courses]"></asp:SqlDataSource>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Courses]" DeleteCommand="DELETE FROM [Courses] WHERE [c_no] = @c_no" InsertCommand="INSERT INTO [Courses] ([c_no], [title], [credits]) VALUES (@c_no, @title, @credits)" UpdateCommand="UPDATE [Courses] SET [title] = @title, [credits] = @credits WHERE [c_no] = @c_no">
                            <DeleteParameters>
                                <asp:Parameter Name="c_no" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="c_no" Type="String" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="credits" Type="Int32" />
                            </InsertParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="credits" Type="Int32" />
                                <asp:Parameter Name="c_no" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
		    <asp:SqlDataSource ID="SqlDataSource3" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Courses]">
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
