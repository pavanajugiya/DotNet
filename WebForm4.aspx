<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm4.aspx.cs" Inherits="dotnet_pro_a01.WebForm4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Employee Leave Application</title>

    <style>
        body {
            margin: 0;
            padding: 0;
            font-family: Arial, sans-serif;
            background: #f2f5f9;
        }

        .container {
            width: 450px;
            margin: 50px auto;
            background: white;
            padding: 30px 40px;
            border-radius: 12px;
            box-shadow: 0 5px 20px rgba(0, 0, 0, 0.15);
        }

        .container h3 {
            text-align: center;
            color: #2c3e50;
            margin-bottom: 30px;
            font-size: 24px;
        }

        .form-group {
            margin-bottom: 20px;
        }

        .form-group label {
            display: block;
            margin-bottom: 7px;
            color: #34495e;
            font-weight: bold;
        }

        .textbox {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 6px;
            box-sizing: border-box;
            font-size: 15px;
        }

        .textbox:focus {
            border-color: #3498db;
            outline: none;
            box-shadow: 0 0 5px rgba(52, 152, 219, 0.3);
        }

        .validator {
            color: red;
            font-size: 13px;
            margin-left: 5px;
        }

        .submit-btn {
            width: 100%;
            padding: 12px;
            background: #3498db;
            color: white;
            border: none;
            border-radius: 6px;
            font-size: 16px;
            font-weight: bold;
            cursor: pointer;
        }

        .submit-btn:hover {
            background: #2980b9;
        }

        .result {
            display: block;
            margin: 20px 0;
            padding: 12px;
            background: #ecf8f0;
            border-radius: 6px;
            color: #27ae60;
            font-weight: bold;
        }
    </style>
</head>

<body>
    <form id="form1" runat="server">

        <div class="container">

            <h3>Employee Leave Application Form</h3>

            <div class="form-group">
                <label>Name :</label>
                <asp:TextBox ID="txtname" runat="server" CssClass="textbox"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator1"
                    ControlToValidate="txtname"
                    runat="server"
                    ErrorMessage="Name is required"
                    CssClass="validator">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Employee Id :</label>
                <asp:TextBox ID="txtid" runat="server" CssClass="textbox"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator2"
                    ControlToValidate="txtid"
                    runat="server"
                    ErrorMessage="Employee ID is required"
                    CssClass="validator">
                </asp:RequiredFieldValidator>
            </div>

            <div class="form-group">
                <label>Age :</label>
                <asp:TextBox ID="txtage" runat="server" CssClass="textbox"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator5"
                    ControlToValidate="txtage"
                    runat="server"
                    ErrorMessage="Age is required"
                    CssClass="validator">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator
                    ID="RangeValidator1"
                    ControlToValidate="txtage"
                    runat="server"
                    ErrorMessage="Age must be between 18 and 65"
                    MinimumValue="18"
                    MaximumValue="65"
                    Type="Integer"
                    CssClass="validator">
                </asp:RangeValidator>
            </div>

            <div class="form-group">
                <label>Leave Days :</label>
                <asp:TextBox ID="txtday" runat="server" CssClass="textbox"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator3"
                    ControlToValidate="txtday"
                    runat="server"
                    ErrorMessage="Leave days is required"
                    CssClass="validator">
                </asp:RequiredFieldValidator>

                <asp:RangeValidator
                    ID="RangeValidator2"
                    ControlToValidate="txtday"
                    runat="server"
                    ErrorMessage="Leave days must be between 1 and 5"
                    MinimumValue="1"
                    MaximumValue="5"
                    Type="Integer"
                    CssClass="validator">
                </asp:RangeValidator>
            </div>

            <div class="form-group">
                <label>Reason :</label>
                <asp:TextBox ID="txtreason" runat="server" CssClass="textbox"></asp:TextBox>

                <asp:RequiredFieldValidator
                    ID="RequiredFieldValidator4"
                    ControlToValidate="txtreason"
                    runat="server"
                    ErrorMessage="Reason is required"
                    CssClass="validator">
                </asp:RequiredFieldValidator>
            </div>

            <asp:Label
                ID="lblshow"
                runat="server"
                CssClass="result"
                Text="">
            </asp:Label>

            <asp:Button
                ID="Button1"
                runat="server"
                Text="Submit"
                OnClick="Button1_Click"
                CssClass="submit-btn" />

        </div>

    </form>
</body>
</html>