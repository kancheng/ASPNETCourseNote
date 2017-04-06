<%@ Page Title="" Language="C#" MasterPageFile="~/MyAppointment.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
     <table style="border-top: silver thin solid; border-bottom-width: thin; border-bottom-color: silver;
            width: 855px">
            <tr>
                <td style="width: 539px; height: 255px">
        <table style="width: 344px; height: 186px">
            <tr>
                <td style="width: 122px">
                    病人姓名 :</td>
                <td style="width: 122px">
                    <asp:DropDownList ID="ddlPatient" runat="server" 
                        Width="180px" AutoPostBack="True" 
                        OnSelectedIndexChanged="ddlPatient_SelectedIndexChanged">
                </asp:DropDownList></td>
            </tr>
             <tr>
                <td style="width: 122px">
                    病人編號 :</td>
                <td style="width: 122px">
                    <asp:TextBox ID="txtID" runat="server" Width="174px"></asp:TextBox></td>
            </tr>        
            <tr>
                <td style="width: 122px">
                    姓名 :</td>
                <td style="width: 122px">
                    <asp:TextBox ID="txtName" runat="server" Width="174px"></asp:TextBox></td>
            </tr>           
            <tr>
                <td style="width: 122px">
                    生日 :</td>
                <td style="width: 122px">
                    <asp:TextBox ID="txtDOB" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 122px">
                    地址 :</td>
                <td style="width: 122px">
                    <asp:TextBox ID="txtAddress" runat="server" Width="173px"></asp:TextBox></td>
            </tr>           
            <tr>
                <td style="width: 122px; height: 1px">
                    郵遞區號 :</td>
                <td style="width: 122px; height: 1px">
                    <asp:TextBox ID="txtPostCode" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 122px; height: 1px">
                    電話 :</td>
                <td style="width: 122px; height: 1px">
                    <asp:TextBox ID="txtPhone" runat="server" Width="173px"></asp:TextBox></td>
            </tr>
            <tr>
                <td style="width: 122px; height: 1px">
                    預約時間 :</td>
                <td style="width: 122px; height: 1px">
                    <asp:DropDownList ID="ddlApointment" runat="server" Width="180px">
                    </asp:DropDownList></td>
            </tr>
        </table>
                    <br />
                    <br />
                    <asp:Button ID="Button1" runat="server" Text="預約看診" OnClick="Button1_Click" />
                <td style="width: 663px; height: 255px">
                    <asp:Calendar ID="calDentist" runat="server" BackColor="White" 
                        BorderColor="#999999" Font-Names="Verdana" Font-Size="8pt" ForeColor="Black" 
                        Height="224px" OnDayRender="calDentist_DayRender" OnSelectionChanged="calDentist_SelectionChanged"
                        Width="401px" DayNameFormat="Shortest" CellPadding="4">
                        <SelectedDayStyle BackColor="#666666" Font-Bold="True" ForeColor="White" />
                        <SelectorStyle BackColor="#CCCCCC" />
                        <WeekendDayStyle BackColor="#FFFFCC" />
                        <TodayDayStyle BackColor="#CCCCCC" ForeColor="Black" />
                        <OtherMonthDayStyle ForeColor="#808080" />
                        <NextPrevStyle VerticalAlign="Bottom" />
                        <DayHeaderStyle BackColor="#CCCCCC" Font-Bold="True" Font-Size="7pt" />
                        <TitleStyle BackColor="#999999" Font-Bold="True" BorderColor="Black" />
                    </asp:Calendar>
                </td>
            </tr>
            <tr>
                <td colspan="2" style="border-top: silver thin solid; height: 4px">
                    &nbsp;</td>
            </tr>
            <tr>
                <td colspan="2" style="border-top: silver thin solid; height: 4px" 
                    bgcolor="#669900">
        <asp:Label ID="lblMessage" runat="server" Font-Bold="True" ForeColor="White"></asp:Label></td>
            </tr>
            <tr>
                <td colspan="2" style="border-top: silver thin solid; height: 4px">
                 <div align="center">
                    <asp:GridView ID="viewAp" runat="server" AllowPaging="True" 
                AutoGenerateColumns="False" CellPadding="4" PageSize="5" 
                Width="784px" ForeColor="Black" GridLines="Vertical" AllowSorting="True" 
                DataKeyNames="AptmentID" DataSourceID="SqlDataSource1" 
                        OnRowDeleted="viewAp_RowDeleted" BackColor="White" BorderColor="#DEDFDE" 
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
                SelectCommand="SELECT Aptment.AptmentID, Aptment.PatientID, Aptment.DateOfAptment, Aptment.Time, Patient.Name, Patient.DateOfBirth FROM Aptment INNER JOIN Patient ON Aptment.PatientID = Patient.PatientID" 
                UpdateCommand="UPDATE [Aptment] SET [PatientID] = @PatientID, [DateOfAptment] = @DateOfAptment, [Time] = @Time WHERE [AptmentID] = @AptmentID">
                <DeleteParameters>
                    <asp:Parameter Name="AptmentID" Type="Int32" />
                </DeleteParameters>
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

