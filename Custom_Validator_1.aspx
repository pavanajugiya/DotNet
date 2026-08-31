<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Custom_Validator_1.aspx.cs" Inherits="WebApplication7.Custom_Validator_1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
            <div>
    
    <asp:Label ID="Label1" runat="server" Text="Enrollment Number"> </asp:Label>

    <asp:TextBox ID="txtenno" runat="server"> </asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtenno" ErrorMessage="not null" ForeColor="Red" ValidationGroup="cv1"></asp:RequiredFieldValidator>

    <asp:CustomValidator
        ID="CustomValidator1"
        runat="server"
        ControlToValidate="txtenno"
        ForeColor="Red"
        ErrorMessage="Enrollment Number must start with LJ"
        OnServerValidate="CustomValidator1_ServerValidate" ValidationGroup="cv1"></asp:CustomValidator>


    <br /><br />


    <asp:Label ID="Label2" runat="server" Text="PIN"> </asp:Label>

    <asp:TextBox ID="txtpin" runat="server"> </asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtpin" ErrorMessage="not null" ForeColor="Red" ValidationGroup="cv1"></asp:RequiredFieldValidator>

    <asp:CustomValidator
        ID="CustomValidator2"
        runat="server"
        ControlToValidate="txtpin"
        ForeColor="Red"
        ErrorMessage="PIN must contain exactly 6 digits"
        OnServerValidate="CustomValidator2_ServerValidate" ValidationGroup="cv1"></asp:CustomValidator>


    <br /><br />


    
    <asp:Label ID="Label3" runat="server"  Text="Semester">  </asp:Label>

    <asp:TextBox ID="txtsem" runat="server"> </asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="txtsem" ErrorMessage="not null" ForeColor="Red" ValidationGroup="cv1"></asp:RequiredFieldValidator>

    <asp:CustomValidator
        ID="CustomValidator3"
        runat="server"
        ControlToValidate="txtsem"
        ForeColor="Red"
        ErrorMessage="Semester must be 1, 3, 5 or 7"
        OnServerValidate="CustomValidator3_ServerValidate" ValidationGroup="cv1"></asp:CustomValidator>


    <br /><br />


   
    <asp:Label ID="Label4" runat="server" Text="Mobile Number"> </asp:Label>

    <asp:TextBox ID="txtmno" runat="server">  </asp:TextBox>
    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="txtmno" ErrorMessage="not null" ForeColor="Red" ValidationGroup="cv1"></asp:RequiredFieldValidator>

    <asp:CustomValidator
        ID="CustomValidator4"
        runat="server"
        ControlToValidate="txtmno"
        ForeColor="Red"
        ErrorMessage="Mobile must contain 10 digits and start with 6, 7, 8 or 9"
        OnServerValidate="CustomValidator4_ServerValidate" ValidationGroup="cv1"></asp:CustomValidator>


    <br /><br />


   
    <asp:Label ID="Label5" runat="server"  Text="Username"> </asp:Label>

    <asp:TextBox ID="txtuname" runat="server"> </asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ControlToValidate="txtuname" ErrorMessage="not null" ForeColor="Red" ValidationGroup="cv1"></asp:RequiredFieldValidator>

    <asp:CustomValidator
        ID="CustomValidator5"
        runat="server"
        ControlToValidate="txtuname"
        ForeColor="Red"
        ErrorMessage="Username must start with MCA, end with a number and contain at least 6 characters"
        OnServerValidate="CustomValidator5_ServerValidate" ValidationGroup="cv1"></asp:CustomValidator>


    <br /><br />


   
    <asp:Label ID="Label6" runat="server" Text="Total Persons"> </asp:Label>

    <asp:TextBox ID="txtperson" runat="server"> </asp:TextBox>
     <asp:RequiredFieldValidator ID="RequiredFieldValidator6" runat="server" ControlToValidate="txtperson" ErrorMessage="not null" ForeColor="Red" ValidationGroup="cv1"></asp:RequiredFieldValidator>

    <asp:CustomValidator
        ID="CustomValidator6"
        runat="server"
        ControlToValidate="txtperson"
        ForeColor="Red"
        ErrorMessage="Total persons must be between 1 and 100 and divisible by 4"
        OnServerValidate="CustomValidator6_ServerValidate" ValidationGroup="cv1"></asp:CustomValidator>


    <br /><br />


    <asp:Button  ID="btnsubmit"   runat="server" Text="Submit" ValidationGroup="cv1" />

    <asp:ValidationSummary ID="ValidationSummary1" ValidationGroup="cv1" runat="server" />


</div>

    </form>
</body>
</html>
