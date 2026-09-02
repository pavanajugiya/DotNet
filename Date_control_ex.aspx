<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Date_control_ex.aspx.cs" Inherits="WebApplication1.Date_control_ex" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Calendar ID="Calendar1" runat="server"></asp:Calendar>

        </div>
        <br />
        <asp:Button ID="Button1" runat="server" Text="Selected Date" OnClick="Button1_Click" />
        <br />
        <br />
        <asp:Label ID="lblshow" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button2" runat="server" Text="Diffrence bt Curent Date & selected date" OnClick="Button2_Click" />
        <br />
        <br />
        <asp:Label ID="lblcd" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button3" runat="server" Text="show(current/past/future)" OnClick="Button3_Click" />
        <br />
        <br />
        <asp:Label ID="lblcpf" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button4" runat="server" OnClick="Button4_Click" Text="Leap Year or Not" />
        <br />
        <br />
        <asp:Label ID="lblyear" runat="server" Text=""></asp:Label>
        <br />
        <br />
        <asp:Button ID="Button5" runat="server" Text="Days in Month" OnClick="Button5_Click" />
        <br />
        <br />
        <asp:Label ID="lblday" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
