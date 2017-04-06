<%@ Page Title="" Language="C#" MasterPageFile="~/MyAppointment.master" AutoEventWireup="true" CodeFile="DisplayApps.aspx.cs" Inherits="DisplayApps" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
    <table style="width: 100%">
        <tr>
            <td style="color: #333300">
                    病人姓名 :<asp:DropDownList ID="ddlPatient" runat="server" 
                        Width="180px" AutoPostBack="True"  
                    DataSourceID="SqlDataSource2" DataTextField="Name" DataValueField="PatientID">
                </asp:DropDownList>
                <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT [Name], [PatientID] FROM [Patient]">
                </asp:SqlDataSource>
            </td>
        </tr>
        <tr>
            <td>
                <div align="center">
                    <asp:GridView ID="viewAp" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" PageSize="5" 
                Width="467px" ForeColor="Black" GridLines="Vertical" AllowSorting="True" 
                DataKeyNames="AptmentID" DataSourceID="SqlDataSource1" 
                        BackColor="White" BorderColor="#DEDFDE" 
                        BorderStyle="None" BorderWidth="1px">
                <FooterStyle BackColor="#CCCC99" />
                <RowStyle BackColor="#F7F7DE" />
                <Columns>
                    <asp:CommandField ShowDeleteButton="True" />
                    <asp:BoundField DataField="AptmentID" HeaderText="預約編號" 
                        InsertVisible="False" ReadOnly="True" SortExpression="AptmentID" />
                    <asp:BoundField DataField="PatientID" HeaderText="病人編號" 
                        SortExpression="PatientID" />                  
                    <asp:BoundField DataField="Name" HeaderText="病人姓名" 
                        SortExpression="Name" />                    
                    <asp:BoundField DataField="DateOfAptment" DataFormatString="{0:d}" 
                        HeaderText="預約日期" SortExpression="DateOfAptment" />
                    <asp:BoundField DataField="Time" HeaderText="預約時間" SortExpression="Time" />
                </Columns>
                <SelectedRowStyle BackColor="#CE5D5A" ForeColor="White" Font-Bold="True" />
                <PagerStyle ForeColor="Black" HorizontalAlign="Right" 
                    BackColor="#F7F7DE" />
                <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                <AlternatingRowStyle BackColor="White" />
                        <SortedAscendingCellStyle BackColor="#FBFBF2" />
                        <SortedAscendingHeaderStyle BackColor="#848384" />
                        <SortedDescendingCellStyle BackColor="#EAEAD3" />
                        <SortedDescendingHeaderStyle BackColor="#575357" />
            </asp:GridView>
            </div>
                    <br />
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                DeleteCommand="DELETE FROM [Aptment] WHERE [AptmentID] = @AptmentID" 
                InsertCommand="INSERT INTO [Aptment] ([PatientID], [DateOfAptment], [Time]) VALUES (@PatientID, @DateOfAptment, @Time)" 
                SelectCommand="SELECT Aptment.AptmentID, Aptment.PatientID, Aptment.DateOfAptment, Aptment.Time, Patient.Name, Patient.DateOfBirth FROM Aptment INNER JOIN Patient ON Aptment.PatientID = Patient.PatientID
WHERE Aptment.PatientID = @pid" 
                
                    UpdateCommand="UPDATE [Aptment] SET [PatientID] = @PatientID, [DateOfAptment] = @DateOfAptment, [Time] = @Time WHERE [AptmentID] = @AptmentID">
                <DeleteParameters>
                    <asp:Parameter Name="AptmentID" Type="Int32" />
                </DeleteParameters>
                <SelectParameters>
                    <asp:ControlParameter ControlID="ddlPatient" Name="pid" 
                        PropertyName="SelectedValue" />
                </SelectParameters>
                <UpdateParameters>
                    <asp:Parameter Name="PatientID" Type="Int32" />
                    <asp:Parameter Name="DateOfAptment" Type="DateTime" />
                    <asp:Parameter Name="Time" Type="String" />
                    <asp:Parameter Name="AptmentID" Type="Int32" />
                </UpdateParameters>
                <InsertParameters>
                    <asp:Parameter Name="PatientID" Type="Int32" />
                    <asp:Parameter Name="DateOfAptment" Type="DateTime" />
                    <asp:Parameter Name="Time" Type="String" />
                </InsertParameters>
            </asp:SqlDataSource>
            </td>
        </tr>
    </table>
</asp:Content>

