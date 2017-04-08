<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server" >
    <div style = "text-align:center;">
        <br />
        <div><h1>Day</h1></div>
        <br />
        <div>
            <span style="margin-left:2em"></span>
            <span> 年 : </span>
            <span style="margin-left:3em"></span>
            <asp:DropDownList ID="DropDownList1" runat="server" OnSelectedIndexChanged="DropDownList1_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
            <span style="margin-left:2em"></span>
            <span> 月 : </span>
            <span style="margin-left:3em"></span>
            <asp:DropDownList ID="DropDownList2" runat="server" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" AutoPostBack="True"></asp:DropDownList>
        </div>
        <br />
        <div>
            <asp:Calendar ID="Calendar1" runat="server" Width="100%" OnSelectionChanged="Calendar1_SelectionChanged" ></asp:Calendar>
        </div>
        <br />
        <div>
            <h2>日期</h2>
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>
    </div>
    </form>
</body>
</html>
