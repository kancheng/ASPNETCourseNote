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
		<div class ="alert alert-info" style = "text-align:center; width:100%; margin:0 auto;">
		<br />
		<asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#31708F">
        <div><h2>查詢</h2></div>
        <hr />
		</asp:Label>
		<br />
            <div style ="text-align:center;">

                <asp:ListView ID="ListView1" runat="server" DataKeyNames="No" DataSourceID="SqlDataSource1" InsertItemPosition="LastItem">
                    <AlternatingItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                            </td>
                            <td>
                                <asp:Label ID="NoLabel" runat="server" Text='<%# Eval("No") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Eval("Telephone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                    </AlternatingItemTemplate>
                    <EditItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="UpdateButton" runat="server" CommandName="Update" Text="更新" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="取消" />
                            </td>
                            <td>
                                <asp:Label ID="NoLabel1" runat="server" Text='<%# Eval("No") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                        </tr>
                    </EditItemTemplate>
                    <EmptyDataTemplate>
                        <table runat="server" style="">
                            <tr>
                                <td>未傳回資料。</td>
                            </tr>
                        </table>
                    </EmptyDataTemplate>
                    <InsertItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="InsertButton" runat="server" CommandName="Insert" Text="插入" />
                                <asp:Button ID="CancelButton" runat="server" CommandName="Cancel" Text="清除" />
                            </td>
                            <td>
                                <asp:TextBox ID="NoTextBox" runat="server" Text='<%# Bind("No") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="NameTextBox" runat="server" Text='<%# Bind("Name") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="AddressTextBox" runat="server" Text='<%# Bind("Address") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="TelephoneTextBox" runat="server" Text='<%# Bind("Telephone") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="BirthdayTextBox" runat="server" Text='<%# Bind("Birthday") %>' />
                            </td>
                            <td>
                                <asp:TextBox ID="EmailTextBox" runat="server" Text='<%# Bind("Email") %>' />
                            </td>
                        </tr>
                    </InsertItemTemplate>
                    <ItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                            </td>
                            <td>
                                <asp:Label ID="NoLabel" runat="server" Text='<%# Eval("No") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Eval("Telephone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                    </ItemTemplate>
                    <LayoutTemplate>
                        <table runat="server">
                            <tr runat="server">
                                <td runat="server">
                                    <table id="itemPlaceholderContainer" runat="server" border="0" style="">
                                        <tr runat="server" style="">
                                            <th runat="server"></th>
                                            <th runat="server">No</th>
                                            <th runat="server">Name</th>
                                            <th runat="server">Address</th>
                                            <th runat="server">Telephone</th>
                                            <th runat="server">Birthday</th>
                                            <th runat="server">Email</th>
                                        </tr>
                                        <tr id="itemPlaceholder" runat="server">
                                        </tr>
                                    </table>
                                </td>
                            </tr>
                            <tr runat="server">
                                <td runat="server" style="">
                                    <asp:DataPager ID="DataPager1" runat="server">
                                        <Fields>
                                            <asp:NextPreviousPagerField ButtonType="Button" ShowFirstPageButton="True" ShowLastPageButton="True" />
                                        </Fields>
                                    </asp:DataPager>
                                </td>
                            </tr>
                        </table>
                    </LayoutTemplate>
                    <SelectedItemTemplate>
                        <tr style="">
                            <td>
                                <asp:Button ID="DeleteButton" runat="server" CommandName="Delete" Text="刪除" />
                                <asp:Button ID="EditButton" runat="server" CommandName="Edit" Text="編輯" />
                            </td>
                            <td>
                                <asp:Label ID="NoLabel" runat="server" Text='<%# Eval("No") %>' />
                            </td>
                            <td>
                                <asp:Label ID="NameLabel" runat="server" Text='<%# Eval("Name") %>' />
                            </td>
                            <td>
                                <asp:Label ID="AddressLabel" runat="server" Text='<%# Eval("Address") %>' />
                            </td>
                            <td>
                                <asp:Label ID="TelephoneLabel" runat="server" Text='<%# Eval("Telephone") %>' />
                            </td>
                            <td>
                                <asp:Label ID="BirthdayLabel" runat="server" Text='<%# Eval("Birthday") %>' />
                            </td>
                            <td>
                                <asp:Label ID="EmailLabel" runat="server" Text='<%# Eval("Email") %>' />
                            </td>
                        </tr>
                    </SelectedItemTemplate>
                </asp:ListView>
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

            </div>
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
