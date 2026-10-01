<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="WebApplication1.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            E_ID :
            <asp:TextBox ID="txteid" runat="server"></asp:TextBox>
            <br />
            <br />
            Name :
            <asp:TextBox ID="txtname" runat="server"></asp:TextBox>
            <br />
            <br />
            Salary :
            <asp:TextBox ID="txtsalary" runat="server"></asp:TextBox>
&nbsp;<br />
            <br />
            Dept_ID :
            <asp:TextBox ID="txtdid" runat="server"></asp:TextBox>
&nbsp;<br />
            <br />
            <asp:Button ID="btnadd" runat="server" OnClick="btnadd_Click" Text="Add" />
&nbsp;
            <asp:Button ID="btnshow" runat="server" OnClick="btnshow_Click" Text="Show" />
            <br />
            <br />
            <asp:Label ID="lblshow" runat="server"></asp:Label>
        </div>
    </form>
</body>
</html>
