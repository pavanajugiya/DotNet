<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tuple_ex_23_9.aspx.cs" Inherits="dot_net_23_9.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name :
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            Age :
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <br />
            <br />
            Email :
            <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>
&nbsp;<br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Submit" />
            <br />
            <br />
            <asp:Label ID="lblshow" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
