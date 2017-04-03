<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
    
        <asp:DetailsView ID="DetailsView1" runat="server" DataSourceID="SqlDataSource1" Height="50px" Width="300px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="White" BorderWidth="2px" CellPadding="3" DataKeyNames="sid" GridLines="None" BorderStyle="Ridge" CellSpacing="1">
            <EditRowStyle BackColor="#9471DE" ForeColor="White" Font-Bold="True" />
            <Fields>
                <asp:BoundField DataField="sid" HeaderText="sid" ReadOnly="True" SortExpression="sid" />
                <asp:BoundField DataField="name" HeaderText="name" SortExpression="name" />
                <asp:BoundField DataField="major" HeaderText="major" SortExpression="major" />
                <asp:BoundField DataField="tel" HeaderText="tel" SortExpression="tel" />
                <asp:BoundField DataField="birthday" HeaderText="birthday" SortExpression="birthday" />
                <asp:BoundField DataField="rent" HeaderText="rent" SortExpression="rent" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#C6C3C6" ForeColor="Black" />
            <HeaderStyle BackColor="#4A3C8C" Font-Bold="True" ForeColor="#E7E7FF" />
            <PagerStyle BackColor="#C6C3C6" ForeColor="Black" HorizontalAlign="Right" />
            <RowStyle BackColor="#DEDFDE" ForeColor="Black" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Students]" DeleteCommand="DELETE FROM [Students] WHERE [sid] = @sid" InsertCommand="INSERT INTO [Students] ([sid], [name], [major], [tel], [birthday], [rent]) VALUES (@sid, @name, @major, @tel, @birthday, @rent)" UpdateCommand="UPDATE [Students] SET [name] = @name, [major] = @major, [tel] = @tel, [birthday] = @birthday, [rent] = @rent WHERE [sid] = @sid">
            <DeleteParameters>
                <asp:Parameter Name="sid" Type="String" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="sid" Type="String" />
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="rent" Type="Decimal" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="name" Type="String" />
                <asp:Parameter Name="major" Type="String" />
                <asp:Parameter Name="tel" Type="String" />
                <asp:Parameter Name="birthday" Type="DateTime" />
                <asp:Parameter Name="rent" Type="Decimal" />
                <asp:Parameter Name="sid" Type="String" />
            </UpdateParameters>
        </asp:SqlDataSource>
    
    </div>
    </form>
</body>
</html>
