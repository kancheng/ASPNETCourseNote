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
            <asp:Label ID="Label1" runat="server" ForeColor="Blue" Text="選擇上傳圖檔:"></asp:Label>
            &nbsp;<asp:FileUpload ID="UploadImage" runat="server" />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" Text="上傳圖檔" Width="191px" />
            <hr />
            <asp:DataList ID="DataList1" runat="server" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" ForeColor="Black" GridLines="Both" RepeatColumns="3">
                <FooterStyle BackColor="#CCCCCC" />
                <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
                <ItemStyle BackColor="White" />
                <ItemTemplate>
                    <asp:Image ID="Image1" runat="server" Height="157px" ImageUrl='<%# Eval("Name", "~/UploadImages/{0}") %>' Width="115px" />
                <br />
                    <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl='<%# Eval("Name", "DisplayPhoto.aspx?file={0}") %>' Text='<%# Eval("Name") %>'></asp:HyperLink>
                </ItemTemplate>
                <SelectedItemStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            </asp:DataList>
            <hr />
    </div>
    </form>
</body>
</html>
