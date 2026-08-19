<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registration.aspx.cs" Inherits="dotnet_pavan_01.Registration" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <h3>Online Event Registration</h3>

            <p>
                Participant Name :
                <asp:TextBox ID="txtpname" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator1"
                    runat="server"
                    ControlToValidate="txtpname"
                    ValidationExpression="^[A-Za-z ]+"
                    ErrorMessage="only alphabets and spaces"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </p>

            <p>
                Mobile Number :
                <asp:TextBox ID="txtmnum" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator2"
                    runat="server"
                    ControlToValidate="txtmnum"
                    ValidationExpression="^[0-9]{10}"
                    ErrorMessage="10 digits"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </p>

            <p>
                PIN Code :
                <asp:TextBox ID="txtpin" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator3"
                    runat="server"
                    ControlToValidate="txtpin"
                    ValidationExpression="^[0-9]{6}"
                    ErrorMessage="6 digits"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </p>

            <p>
                Username :
                <asp:TextBox ID="txtuname" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator4"
                    runat="server"
                    ControlToValidate="txtuname"
                    ValidationExpression="^[A-Za-z0-9_]{5,15}"
                    ErrorMessage="5-15 char containing letters,number or_"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </p>

            <p>
                Event Code :
                <asp:TextBox ID="txtecode" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator5"
                    runat="server"
                    ControlToValidate="txtecode"
                    ValidationExpression="^[A-Z]{3}[0-9]{4}"
                    ErrorMessage="3 uppercase letters 4 digits"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </p>

            <p>
                Email :
                <asp:TextBox ID="txtemail" runat="server"></asp:TextBox>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator6"
                    runat="server"
                    ControlToValidate="txtemail"
                    <!--ValidationExpression="^[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]{2,}"-->
                    ValidationExpression=".+@.+\..+"
                    ErrorMessage="valid email"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </p>

            <p>
                Password :
                <asp:TextBox ID="txtpass" runat="server" TextMode="Password"></asp:TextBox>

                <asp:RegularExpressionValidator
                    ID="RegularExpressionValidator7"
                    runat="server"
                    ControlToValidate="txtpass"
                    ValidationExpression="^.{8,}"
                    ErrorMessage="minimum 8 char"
                    ForeColor="Red"></asp:RegularExpressionValidator>
            </p>
            <p>
                <asp:Button ID="btnsubmit" runat="server" OnClick="btnsubmit_Click" Text="submit" />
            </p>
            <p>
                <asp:Label ID="lblshow" runat="server"></asp:Label>
            </p>

        </div>
    </form>
</body>
</html>