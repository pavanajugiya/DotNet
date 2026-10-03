<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LINQ_ex_3_10.aspx.cs" Inherits="Dot_net_3_10.LINQ_ex_3_10" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            ID:
            <asp:TextBox ID="txtid" runat="server"></asp:TextBox>
            <br />
            <br />
            Movie Name :
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            Director :
            <asp:TextBox ID="txtdirector" runat="server"></asp:TextBox>
&nbsp;<br />
&nbsp;
            <br />
            Rating :<asp:RadioButtonList ID="rblrating" runat="server" AutoPostBack="True" Height="16px" RepeatDirection="Horizontal" Width="45px">
                <asp:ListItem>1</asp:ListItem>
                <asp:ListItem>2</asp:ListItem>
                <asp:ListItem>3</asp:ListItem>
                <asp:ListItem>4</asp:ListItem>
                <asp:ListItem>5</asp:ListItem>
                <asp:ListItem>6</asp:ListItem>
                <asp:ListItem>7</asp:ListItem>
                <asp:ListItem>8</asp:ListItem>
                <asp:ListItem>9</asp:ListItem>
                <asp:ListItem>10</asp:ListItem>
            </asp:RadioButtonList>
&nbsp;<br />
            <br />
            <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="ADD" />
&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="btnshow" runat="server" OnClick="btnshow_Click" Text="Show" />
&nbsp;
            <asp:Button ID="btnQ2" runat="server" OnClick="btnQ2_Click" Text="&gt;8" />
            <br />
            <br />
            <asp:Label ID="lblshow" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
