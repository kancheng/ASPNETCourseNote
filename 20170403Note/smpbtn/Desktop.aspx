<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Desktop.aspx.cs" Inherits="Desktop" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="PathContent" Runat="Server" >
    <asp:SiteMapPath ID="SiteMapPath1" runat="server">
        <NodeTemplate>
            <asp:Button ID="Button1" runat="server" CommandArgument='<%# Eval("url") %>' OnCommand="Button1_Command" Text='<%# Eval("title") %>' />
        </NodeTemplate>
        <PathSeparatorTemplate>
            -&gt;
        </PathSeparatorTemplate>
    </asp:SiteMapPath>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="MainContent" Runat="Server">
    <p>桌上型電腦</p>
</asp:Content>

