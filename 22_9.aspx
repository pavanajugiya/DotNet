<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="bank.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>

            <br />
            Account No :&nbsp;&nbsp;
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <br />
            <br />
            Balance :&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
            <br />
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem>CurrentACC</asp:ListItem>
                <asp:ListItem>SavingAcc</asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Panel ID="Panel1" runat="server" Height="154px" Visible="False">
                Current Account :<br />
                <br />
                Withdraw Amount :&nbsp;
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                <br />
                <br />
                <asp:Button ID="Button1" runat="server" Text="Withdraw" OnClick="Button1_Click1" />
                <br />
                <br />
                <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
            <br />
            <br />
            <asp:Panel ID="Panel2" runat="server" Height="180px" Visible="False">
                Saving Account :
                <br />
                <br />
                Withdraw Amount :
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                <br />
                <br />
                <br />
                <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="withdraw" />
                <br />
                <br />
                <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
            </asp:Panel>
            <br />
            Method Overloding<br />
            <br />
            <asp:Button ID="Button3" runat="server" OnClick="Button3_Click" Text="overloading" />
            <br />
            <br />
            <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
            <br />
            <br />
            <br />
            <br />
            <br />
           







        </div>
    </form>
</body>
</html>
