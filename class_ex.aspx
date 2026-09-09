<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="class_ex.aspx.cs" Inherits="WebApplication2.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            Name :
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            Age :
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
            <br />
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>

        </div>
    </form>
</body>
</html>
