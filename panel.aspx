<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="panel.aspx.cs" Inherits="dot_net_panel_01.panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnhideshow" runat="server" Text="Hide" OnClick="Button2_Click" />
            <br />
            <asp:Panel ID="Panel1" runat="server">
                Name : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox><br />
                <br />
                <asp:Button ID="btnsubmit" runat="server" Text="Submit" />
            </asp:Panel>
        </div>
    </form>
</body>
</html>
