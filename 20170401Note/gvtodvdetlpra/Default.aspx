<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <style type="text/css">

        .style1
        {
            width: 100%;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>    
    
             <table class="style1">
                <tr>
                    <td>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" BackColor="White" BorderColor="#CCCCCC" BorderStyle="None" BorderWidth="1px" CellPadding="4" DataKeyNames="c_no" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="Horizontal">
                            <Columns>
                                <asp:CommandField ShowSelectButton="True" />
                                <asp:BoundField DataField="c_no" HeaderText="c_no" ReadOnly="True" SortExpression="c_no" />
                            </Columns>
                            <FooterStyle BackColor="#CCCC99" ForeColor="Black" />
                            <HeaderStyle BackColor="#333333" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="Black" HorizontalAlign="Right" />
                            <SelectedRowStyle BackColor="#CC3333" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F7F7F7" />
                            <SortedAscendingHeaderStyle BackColor="#4B4B4B" />
                            <SortedDescendingCellStyle BackColor="#E5E5E5" />
                            <SortedDescendingHeaderStyle BackColor="#242121" />
                        </asp:GridView>
                    </td>
                    <td>
                        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" CellPadding="4" DataKeyNames="c_no" DataSourceID="SqlDataSource2" ForeColor="#333333" GridLines="None" Height="50px" Width="336px" HeaderText="課程資訊">
                            <AlternatingRowStyle BackColor="White" />
                            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
                            <EditRowStyle BackColor="#7C6F57" />
                            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
                            <Fields>
                                <asp:BoundField DataField="c_no" HeaderText="c_no" ReadOnly="True" SortExpression="c_no" />
                                <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
                                <asp:BoundField DataField="credits" HeaderText="credits" SortExpression="credits" />
                                <asp:ImageField DataImageUrlField="c_no" DataImageUrlFormatString="~/images/{0}.gif" HeaderText="教科書封面" ReadOnly="True">
                                </asp:ImageField>
                            </Fields>
                            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#E3EAEB" />
                        </asp:DetailsView>
                    </td>
                </tr>
                <tr>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT [c_no] FROM [Courses]"></asp:SqlDataSource>
                    </td>
                    <td>
                        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Courses] WHERE ([c_no] = @c_no)" DeleteCommand="DELETE FROM [Courses] WHERE [c_no] = @c_no" InsertCommand="INSERT INTO [Courses] ([c_no], [title], [credits]) VALUES (@c_no, @title, @credits)" UpdateCommand="UPDATE [Courses] SET [title] = @title, [credits] = @credits WHERE [c_no] = @c_no">
                            <DeleteParameters>
                                <asp:Parameter Name="c_no" Type="String" />
                            </DeleteParameters>
                            <InsertParameters>
                                <asp:Parameter Name="c_no" Type="String" />
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="credits" Type="Int32" />
                            </InsertParameters>
                            <SelectParameters>
                                <asp:ControlParameter ControlID="GridView1" Name="c_no" PropertyName="SelectedValue" Type="String" />
                            </SelectParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="credits" Type="Int32" />
                                <asp:Parameter Name="c_no" Type="String" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </td>
                </tr>
            </table>

    </div>
    </form>
</body>
</html>
