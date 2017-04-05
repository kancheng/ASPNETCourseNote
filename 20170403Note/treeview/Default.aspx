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

        <asp:TreeView ID="TreeView1" runat="server">
            <Nodes>
                <asp:TreeNode NavigateUrl="~/Default.aspx" Text="首頁" Value="首頁">
                    <asp:TreeNode NavigateUrl="~/Phones.aspx" Text="智慧型手機" Value="智慧型手機">
                        <asp:TreeNode NavigateUrl="~/iPhone.aspx" Text="iPhone" Value="iPhone"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Samsung.aspx" Text="Samsung" Value="Samsung"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/HTC.aspx" Text="HTC" Value="HTC"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/Computers.aspx" Text="電腦" Value="電腦">
                        <asp:TreeNode NavigateUrl="~/Desktop.aspx" Text="桌上型電腦" Value="桌上型電腦"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Notebook.aspx" Text="筆記型電腦" Value="筆記型電腦"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/Pad.aspx" Text="平板電腦" Value="平板電腦"></asp:TreeNode>
                    </asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>

    </div>
    </form>
</body>
</html>
