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
    
        Dir :<br />
        <br />
    
        <asp:Label ID="lblOutput" runat="server"></asp:Label>
    
        <br />
        <br />
        Write :<br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Label">
            鶴鳴于九皋，聲聞于野。魚潛在淵，或在于渚。樂彼之園，爰有樹檀，其下維萚。他山之石，可以為錯。
            鶴鳴于九皋，聲聞于天。魚在于渚，或潛在淵。樂彼之園，爰有樹檀，其下維榖。他山之石，可以攻玉。
        </asp:Label>
    
        <br />
        <br />
        <asp:Button ID="Button1" runat="server" Text="Submit" Width="15%" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="Label2" runat="server"></asp:Label>
        <br />
    
    </div>
    </form>
</body>
</html>
