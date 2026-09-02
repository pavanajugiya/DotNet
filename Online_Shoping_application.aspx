<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Online_Shoping_application.aspx.cs" Inherits="WebApplication1.Online_Shoping_application" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Online Shopping Application</h3>
            <p>Shipping Address Selection </p>
            <p>
                <asp:RadioButtonList ID="RadioButtonList1" runat="server" AutoPostBack="True" OnSelectedIndexChanged="RadioButtonList1_SelectedIndexChanged">
                    <asp:ListItem Text="Home Delivery" Value="Home Delivery"></asp:ListItem>
                    <asp:ListItem Text="Store Pickup" Value="Store Pickup"></asp:ListItem>
                </asp:RadioButtonList></p>
            <asp:Panel ID="HD_panel" runat="server">
                Street Address :
                <asp:TextBox ID="txtadd" runat="server"></asp:TextBox>
                <br />
                <br />
                City :
                <asp:TextBox ID="txtcity" runat="server"></asp:TextBox>
                <br />
                <br />
                State :
                <asp:TextBox ID="txtstate" runat="server"></asp:TextBox>
                <br />
                <br />
                Zip Code :
                <asp:TextBox ID="txtzip" runat="server"></asp:TextBox>
                <br />

            </asp:Panel>

            <asp:Panel ID="SP_panel" runat="server">
                Select Sotre Location :
                <asp:DropDownList ID="sl_DropDownList" runat="server">
                    <asp:ListItem Text="hpt pvt sarkhej" Value="hpt pvt sarkhej"></asp:ListItem>
                    <asp:ListItem Text="hpt pvt bopal" Value="hpt pvt bopal"></asp:ListItem>
                    <asp:ListItem Text="hpt pvt jivraj" Value="hpt pvt jivraj"></asp:ListItem>
                </asp:DropDownList>

            </asp:Panel>

            <p>
                Preferred Date :
                <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>
            </p>
            <p>
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </p>


        </div>
        
    </form>
</body>
</html>
