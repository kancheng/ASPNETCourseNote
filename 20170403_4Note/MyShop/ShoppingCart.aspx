<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop.master" AutoEventWireup="true" CodeFile="ShoppingCart.aspx.cs" Inherits="ShoppingCart" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
<div>
    <span style="color: #800000; font-size: large;"><strong>網路書店購物明細：</strong></span><br />
    <br />
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
        CellPadding="2" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
        GridLines="None" Width="679px" 
        OnRowDataBound="GridView1_RowDataBound" ShowFooter="True" 
        OnRowCommand="GridView1_RowCommand" BackColor="LightGoldenrodYellow" 
        BorderColor="Tan" BorderWidth="1px" ForeColor="Black">
        <EmptyDataTemplate>
            沒有購買項目.....
        </EmptyDataTemplate>
        <FooterStyle BackColor="Tan" />
        <Columns>
            <asp:ButtonField ButtonType="Button" HeaderText="刪除" Text="刪除" 
                CommandName="DelItem" />
            <asp:BoundField DataField="BookID" HeaderText="書號" ReadOnly="True" 
                SortExpression="BookID" />
            <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                SortExpression="BookTitle" />
            <asp:BoundField DataField="BookPrice" DataFormatString="{0:c}" HeaderText="書價" 
                SortExpression="BookPrice" />
            <asp:TemplateField HeaderText="數量"/>                
            <asp:TemplateField HeaderText="小計"/>              
        </Columns>
        <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
            HorizontalAlign="Center" />
        <SelectedRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
        <HeaderStyle BackColor="Tan" Font-Bold="True" />
        <AlternatingRowStyle BackColor="PaleGoldenrod" />
        <SortedAscendingCellStyle BackColor="#FAFAE7" />
        <SortedAscendingHeaderStyle BackColor="#DAC09E" />
        <SortedDescendingCellStyle BackColor="#E1DB9C" />
        <SortedDescendingHeaderStyle BackColor="#C2A47B" />
     </asp:GridView>
     <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
        SelectCommand="SELECT [BookID], [BookTitle], [BookPrice] FROM [Books]"></asp:SqlDataSource>
</div>
</asp:Content>

