<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="payment_details_panel.aspx.cs" Inherits="dot_net_panel_01.payment_details_panel" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:RadioButtonList ID="RadioButtonList1" AutoPostBack="true" runat="server" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                <asp:ListItem Text="Card" Value="Card"></asp:ListItem>
                <asp:ListItem Text="UPI" Value="UPI"></asp:ListItem>
            </asp:RadioButtonList>
            <br />
            <asp:Panel ID="Card_panel" runat="server">
                Card Number :
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                <br />
                Expiry Date :
                <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                <br />
                <br />
                CVV :
                <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                
            </asp:Panel>
            <asp:Panel ID="UPI_panel" runat="server">
                UPI ID :
                <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>

            </asp:Panel>
        </div>
    </form>
</body>
</html>
