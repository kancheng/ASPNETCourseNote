<%@ Page Title="" Language="C#" MasterPageFile="~/MyAppointment.master" AutoEventWireup="true" CodeFile="EditPatients.aspx.cs" Inherits="EditPatients" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
        <table style="width: 100%">
            <tr>
                <td>
        <div align="center">
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" 
            AutoGenerateRows="False" CellPadding="4" DataKeyNames="PatientID" 
            DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" 
            Width="393px" OnDataBound="DetailsView1_DataBound" ForeColor="Black" 
            HeaderText="病人資料管理" BackColor="White" BorderColor="#DEDFDE" 
                BorderStyle="None" BorderWidth="1px">
            <FooterStyle BackColor="#CCCC99" />
            <PagerStyle BackColor="#F7F7DE" ForeColor="Black" 
                HorizontalAlign="Right" />
            <Fields>
                <asp:BoundField DataField="PatientID" HeaderText="病人編號" InsertVisible="False" 
                    ReadOnly="True" SortExpression="PatientID" />
                <asp:BoundField DataField="Name" HeaderText="姓名" SortExpression="Name" />
                <asp:BoundField DataField="DateOfBirth" HeaderText="生日" 
                    SortExpression="DateOfBirth" DataFormatString="{0:d}" />
                <asp:BoundField DataField="Address" HeaderText="地址" SortExpression="Address" />
                <asp:BoundField DataField="PostCode" HeaderText="郵遞區號" 
                    SortExpression="PostCode" />
                <asp:BoundField DataField="Phone" HeaderText="電話" SortExpression="Phone" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" 
                    ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
            <AlternatingRowStyle BackColor="White" />
            <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
            <RowStyle BackColor="#F7F7DE" />
        </asp:DetailsView>
        </div>
                </td>
            </tr>
        </table>
        
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            DeleteCommand="DELETE FROM [Patient] WHERE [PatientID] = @PatientID" 
            InsertCommand="INSERT INTO [Patient] ([Name], [DateOfBirth], [Address], [PostCode], [Phone]) VALUES (@Name, @DateOfBirth, @Address, @PostCode, @Phone)" 
            SelectCommand="SELECT * FROM [Patient]" 
            UpdateCommand="UPDATE [Patient] SET [Name] = @Name, [DateOfBirth] = @DateOfBirth, [Address] = @Address, [PostCode] = @PostCode, [Phone] = @Phone WHERE [PatientID] = @PatientID">
            <DeleteParameters>
                <asp:Parameter Name="PatientID" Type="Int32" />
            </DeleteParameters>
            <UpdateParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
                <asp:Parameter Name="PatientID" Type="Int32" />
            </UpdateParameters>
            <InsertParameters>
                <asp:Parameter Name="Name" Type="String" />
                <asp:Parameter Name="DateOfBirth" Type="DateTime" />
                <asp:Parameter Name="Address" Type="String" />
                <asp:Parameter Name="PostCode" Type="String" />
                <asp:Parameter Name="Phone" Type="String" />
            </InsertParameters>
        </asp:SqlDataSource>
</asp:Content>

