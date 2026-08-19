<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Practical_customvalidator.aspx.cs" Inherits="dotnet_pavan_01.Practical_customvalidator" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Custom Validator</h3>
            <p>Number greater than or equal to 50 :
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="&gt; or = 50" ForeColor="Red" OnServerValidate="CustomValidator1_ServerValidate"></asp:CustomValidator>
            </p>
            <p>Age greater than 18 :
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="&gt;18" ForeColor="Red" OnServerValidate="CustomValidator2_ServerValidate"></asp:CustomValidator>
            </p>
            <p>Nmuber only if it is even :
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator3" runat="server" ControlToValidate="TextBox3" ErrorMessage="only even" ForeColor="Red" OnServerValidate="CustomValidator3_ServerValidate"></asp:CustomValidator>
            </p>
            <p>Number divisible by 5 :
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <asp:CustomValidator ID="CustomValidator4" runat="server" ControlToValidate="TextBox4" ErrorMessage="only / by 5" ForeColor="Red" OnServerValidate="CustomValidator4_ServerValidate"></asp:CustomValidator>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="submit" />
            </p>
            <p>
                <asp:Label ID="lblshow" runat="server"></asp:Label>
            </p>
        </div>
    </form>
</body>
</html>
