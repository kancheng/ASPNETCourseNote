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
                <asp:TreeNode Text="Index" Value="Index">
                    <asp:TreeNode NavigateUrl="~/ch12-1.aspx" Text="CH12-1" Value="CH12-1"></asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/ch12-2.aspx" Text="CH12-2" Value="CH12-2">
                        <asp:TreeNode NavigateUrl="~/ch12-2-1.aspx" Text="CH12-2-1" Value="CH12-2-1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/ch12-2-2.aspx" Text="CH12-2-2" Value="CH12-2-2"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/ch12-3.aspx" Text="CH12-3" Value="CH12-3">
                        <asp:TreeNode NavigateUrl="~/ch12-3-1.aspx" Text="CH12-3-1" Value="CH12-3-1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/ch12-3-2.aspx" Text="CH12-3-2" Value="CH12-3-2"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/ch12-4.aspx" Text="CH12-4" Value="CH12-4">
                        <asp:TreeNode NavigateUrl="~/ch12-4-1.aspx" Text="CH12-4-1" Value="CH12-4-1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/ch12-4-2.aspx" Text="CH12-4-2" Value="CH12-4-2"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/ch12-5.aspx" Text="CH12-5" Value="CH12-5">
                        <asp:TreeNode NavigateUrl="~/ch12-5-1.aspx" Text="CH12-5-1" Value="CH12-5-1"></asp:TreeNode>
                        <asp:TreeNode NavigateUrl="~/ch12-5-2.aspx" Text="CH12-5-2" Value="CH12-5-2"></asp:TreeNode>
                    </asp:TreeNode>
                    <asp:TreeNode NavigateUrl="~/ch12-6.aspx" Text="CH12-6" Value="CH12-6"></asp:TreeNode>
                </asp:TreeNode>
            </Nodes>
        </asp:TreeView>
    </div>
    </form>
</body>
</html>
