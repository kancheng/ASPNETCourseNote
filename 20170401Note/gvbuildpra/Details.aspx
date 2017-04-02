﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Details.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
            <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" BackColor="LightGoldenrodYellow" BorderColor="Tan" BorderWidth="1px" CellPadding="2" DataKeyNames="c_no" DataSourceID="SqlDataSource1" ForeColor="Black" GridLines="None" Height="50px" Width="197px">
                <AlternatingRowStyle BackColor="PaleGoldenrod" />
                <EditRowStyle BackColor="DarkSlateBlue" ForeColor="GhostWhite" />
                <Fields>
                    <asp:BoundField DataField="c_no" HeaderText="課程編號" ReadOnly="True" SortExpression="c_no" />
                    <asp:BoundField DataField="title" HeaderText="課程名稱" SortExpression="title" />
                    <asp:BoundField DataField="credits" HeaderText="學分數" SortExpression="credits" />
                </Fields>
                <FooterStyle BackColor="Tan" />
                <HeaderStyle BackColor="Tan" Font-Bold="True" />
                <PagerStyle BackColor="PaleGoldenrod" ForeColor="DarkSlateBlue" HorizontalAlign="Center" />
            </asp:DetailsView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Courses] WHERE ([c_no] = @c_no)">
                <SelectParameters>
                    <asp:QueryStringParameter Name="c_no" QueryStringField="No" Type="String" />
                </SelectParameters>
            </asp:SqlDataSource>
    </div>
    </form>
</body>
</html>
