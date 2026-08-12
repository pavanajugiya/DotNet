<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="dotnet_pro_a01.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Enter Name:<asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" 
                runat="server" ControlToValidate="TextBox1"
                ErrorMessage="Do not Keep Blank" Display="Dynamic"
                ForeColor="Red">

            </asp:RequiredFieldValidator>
            <br />
            Enter Age:<asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" 
                runat="server" ControlToValidate="TextBox2"
                ErrorMessage="Do not Keep Blank" Display="Dynamic"
                ForeColor="Red">
                </asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" 
                runat="server" ControlToValidate="TextBox2"
                ErrorMessage="Age between 30 to 60" Display="Dynamic"
                MinimumValue="30" MaximumValue="60" Type="Integer" ForeColor="Red" >
            </asp:RangeValidator>
            <br />
            <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
            <br />
            <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
            <asp:Label ID="Label2" runat="server" Text=""></asp:Label>
        </div>
    </form>
</body>
</html>
