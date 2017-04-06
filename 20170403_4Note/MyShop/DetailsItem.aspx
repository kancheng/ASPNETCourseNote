<%@ Page Title="" Language="C#" MasterPageFile="~/MyShop.master" AutoEventWireup="true" CodeFile="DetailsItem.aspx.cs" Inherits="DetailsItem" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
  <div>
       <table class="style4">
           <tr>
               <td style="color: #FFFFFF">
                   購買數量</td>
               <td>
                   <asp:TextBox ID="txtQuantity" runat="server">1</asp:TextBox>
               </td>
               <td>
                   <asp:Button ID="Button1" runat="server" Text="加入購物車" onclick="Button1_Click" />
               </td>
           </tr>
       </table>
       <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="2" DataKeyNames="BookID" DataSourceID="SqlDataSource1" 
            ForeColor="Black" GridLines="None" Height="50px" Width="450px" 
           BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px">
            <FooterStyle BackColor="Tan" />
            <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" 
                HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="BookID" HeaderText="書號" ReadOnly="True" 
                    SortExpression="BookID" />
                <asp:BoundField DataField="BookCatalog" HeaderText="分類" 
                    SortExpression="BookCatalog" ReadOnly="True" />
                <asp:BoundField DataField="BookTitle" HeaderText="書名" 
                    SortExpression="BookTitle" ReadOnly="True" />
                <asp:BoundField DataField="BookAuthor" HeaderText="作者" 
                    SortExpression="BookAuthor" ReadOnly="True" />
                <asp:BoundField DataField="BookPrice" HeaderText="書價" 
                    SortExpression="BookPrice" DataFormatString="{0:c}" ReadOnly="True" />
                <asp:BoundField DataField="BookPubDate" HeaderText="出版日" 
                    SortExpression="BookPubDate" DataFormatString="{0:d}" ReadOnly="True" />
                <asp:ImageField DataImageUrlField="BookID" 
                    DataImageUrlFormatString="~/images/{0}.gif" HeaderText="封面" ReadOnly="True">
                </asp:ImageField>
            </Fields>
            <HeaderStyle BackColor="Tan" Font-Bold="True" />
            <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
            <AlternatingRowStyle BackColor="PaleGoldenrod" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT * FROM [Books] WHERE ([BookID] = @BookID)">
            <SelectParameters>
                <asp:QueryStringParameter Name="BookID" QueryStringField="Id" Type="String" />
            </SelectParameters>
        </asp:SqlDataSource>        
   </div>
</asp:Content>

