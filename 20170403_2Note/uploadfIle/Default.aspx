<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div> 請選擇上傳圖檔: </div>
        <br />
        <div>
            <asp:FileUpload ID="upImage" runat="server" />
        </div>
        <br />
        <div>
            <asp:Button ID="Button1" runat="server" Text="上傳檔案" Width="110px" OnClick="Button1_Click" />
        </div>
        <br />
        <div>
            <asp:Label ID="lblOutput" runat="server" ForeColor="Red"></asp:Label>
        </div>
    </form>
</body>
</html>
