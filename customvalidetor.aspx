<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="customvalidetor.aspx.cs" Inherits="dotnet_pavan_01.customvalidetor" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            Custom Validator<br />
            <br />
            User Name :&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:CustomValidator ID="CustomValidator1" runat="server"
                ControlToValidate="TextBox1" ForeColor="Red" Display="Dynamic"
                ErrorMessage="User name should be admin only" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>

            <br />
            <asp:Label ID="Label1" runat="server"></asp:Label>

        </div>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
