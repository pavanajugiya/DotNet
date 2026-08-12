<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm2.aspx.cs" Inherits="dotnet_pro_a01.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Student Name :
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txtname" runat="server" ErrorMessage="not null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Enrollment Number :
            <asp:TextBox ID="txten" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator2" ControlToValidate="txten" runat="server" ErrorMessage="not null" ForeColor="Red"></asp:RequiredFieldValidator>
            <br />
            <br />
            Age :
            <asp:TextBox ID="txtage" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator3" ControlToValidate="txtage" runat="server" ErrorMessage="not null" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator1" runat="server" ControlToValidate="txtage" ErrorMessage="17 to 60" MinimumValue="17" MaximumValue="60" Type="Integer" ForeColor="Red"></asp:RangeValidator>
            <br />
            <br />
            Percentage:
            <asp:TextBox ID="txtper" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator4" ControlToValidate="txtper" runat="server" ErrorMessage="not null" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator2" runat="server" ControlToValidate="txtper" ErrorMessage="0 to 100" MinimumValue="0" MaximumValue="100" Type="Double" ForeColor="Red"></asp:RangeValidator>
            <br />
            <br />
            Semester :
            <asp:TextBox ID="txtsem" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator5" ControlToValidate="txtsem" runat="server" ErrorMessage="not null" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator3" runat="server" ControlToValidate="txtsem" ErrorMessage="1 to 8" MinimumValue="1" MaximumValue="8" Type="Integer" ForeColor="Red"></asp:RangeValidator>
            <br />
            <br />
            Number of Subject :
            <asp:TextBox ID="txtsub" runat="server"></asp:TextBox>
            <asp:RequiredFieldValidator ID="RequiredFieldValidator6" ControlToValidate="txtsub" runat="server" ErrorMessage="not null" ForeColor="Red"></asp:RequiredFieldValidator>
            <asp:RangeValidator ID="RangeValidator4" runat="server" ControlToValidate="txtsub" ErrorMessage="1 to 10" MinimumValue="1" MaximumValue="10" Type="Integer" ForeColor="Red"></asp:RangeValidator>
            <br />
            <br />
            <asp:Label ID="lblshow" runat="server" Text=""></asp:Label>
            <br />
            <br />
            <asp:Button ID="btnsubmit" runat="server" Text="Submit" OnClick="btnsubmit_Click" />
        </div>
    </form>
</body>
</html>
