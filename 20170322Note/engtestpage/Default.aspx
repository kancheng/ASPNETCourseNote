<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <script type = "text/javascript" src = "js/main.js"></script>
    <link rel = "stylesheet" type = "text/css" href = "css/main.css">
    <link rel = "stylesheet" href = "css/bootstrap.min.css">
    <title></title>
</head>
<body style = "bg-color">
    <div style = "text-align:center;">
        <form id = "form1" runat = "server">
            <div>
                <br />
                <h1>Exercise</h1>
                <br />
            </div>
            <div style = "position:relative; left : 33%; text-align:left;" class = "div-topic">
                <br /><!-- 1 -->
                <div>
                    <div>
                        1. The new regulation took effect after all the mumbers _________;<br />
                        from then on all the company employees had to observe it.
                    </div>
                <br />
                    <div>
                        &nbsp;<asp:RadioButton ID="RB11" runat="server" Text=" (A) consented  " GroupName="e1" />&nbsp;
                        <asp:RadioButton ID="RB12" runat="server" Text=" (B) contended  " GroupName="e1" />&nbsp;
                        <asp:RadioButton ID="RB13" runat="server" Text=" (C) concerned  " GroupName="e1" />&nbsp;
                        <asp:RadioButton ID="RB14" runat="server" Text=" (D) concurred  " GroupName="e1" />&nbsp;
                    </div>
                </div>
                <br /><!-- 2 -->
                <div>
                    <div>
                        2. This trail is the only _________ to the remote village in the mountains.
                    </div>
                <br />
                    <div>
                        &nbsp;<asp:RadioButton ID="RB21" runat="server" Text=" (A) method  " GroupName="e2" />&nbsp;
                        <asp:RadioButton ID="RB22" runat="server" Text=" (B) access  " GroupName="e2" />&nbsp;
                        <asp:RadioButton ID="RB23" runat="server" Text=" (C) solution  " GroupName="e2" />&nbsp;
                        <asp:RadioButton ID="RB24" runat="server" Text=" (D) outcome  " GroupName="e2" />&nbsp;
                    </div>
                </div>
                <br /><!-- 3 -->
                <div>
                    <div>
                        3. That man must be from Georgia; he speaks with a heavy southern _________.
                    </div>
                <br />
                    <div>
                        &nbsp;<asp:RadioButton ID="RB31" runat="server" Text=" (A) pronunciation  " GroupName="e3" />&nbsp;
                        <asp:RadioButton ID="RB32" runat="server" Text=" (B) tone  " GroupName="e3" />&nbsp;
                        <asp:RadioButton ID="RB33" runat="server" Text=" (C) accent  " GroupName="e3" />&nbsp;
                        <asp:RadioButton ID="RB34" runat="server" Text=" (D) sound  " GroupName="e3" />&nbsp;
                    </div>
                </div>
                <br /><!-- 4 -->
                <div>
                    <div>
                        4. Taiwan lacks natural _________; all the gasoline is imported.
                    </div>
                <br />
                    <div>
                        &nbsp;<asp:RadioButton ID="RB41" runat="server" Text=" (A) coals  " GroupName="e4" />&nbsp;
                        <asp:RadioButton ID="RB42" runat="server" Text=" (B) surrounding  " GroupName="e4" />&nbsp;
                        <asp:RadioButton ID="RB43" runat="server" Text=" (C) resources  " GroupName="e4" />&nbsp;
                        <asp:RadioButton ID="RB44" runat="server" Text=" (D) sources  " GroupName="e4" />&nbsp;
                    </div>
                </div>
                <br /><!-- 5 -->
                <div>
                    <div>
                        5. I'm not _________ with the man; he is a stranger to me.
                    </div>
                <br />
                    <div>
                        &nbsp;<asp:RadioButton ID="RB51" runat="server" Text=" (A) accustomed  " GroupName="e5" />&nbsp;
                        <asp:RadioButton ID="RB52" runat="server" Text=" (B) acquainted  " GroupName="e5" />&nbsp;
                        <asp:RadioButton ID="RB53" runat="server" Text=" (C) acquired  " GroupName="e5" />&nbsp;
                        <asp:RadioButton ID="RB54" runat="server" Text=" (D) acknowlenged  " GroupName="e5" />&nbsp;
                    </div>
                </div>
            </div>
                <br />
            <div>
                    <asp:Button ID="Button1" runat="server" Text="Submit" class = "btn btn-primary btn-wdt" OnClick="Button1_Click" />
            </div>
            <div>
                <br />
                <asp:Label ID="Label1" runat="server" style =" font-size:25px;" ForeColor="#CC0000"></asp:Label>
                <br />
            </div>
        </form>
    </div>
</body>
</html>
