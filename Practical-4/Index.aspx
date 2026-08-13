<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="Practical_4.Index" UnobtrusiveValidationMode="None" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Online Event Registration</title>
</head>
<body>
    <form id="form1" runat="server">
        <div >
            <h2>Student Event Registration Form</h2>

            <table border="0" cellpadding="6" cellspacing="4" align="center">
                <tr>
                    <td align="left"><strong>Enter Name:</strong></td>
                    <td align="left">
                        <asp:TextBox ID="txtName" runat="server" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ErrorMessage="Enter Name" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Enter GR No:</strong></td>
                    <td align="left">
                        <asp:TextBox ID="txtGRNo" runat="server" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvGRNo" runat="server" ControlToValidate="txtGRNo" ErrorMessage="Enter GR No" ForeColor="Red"></asp:RequiredFieldValidator>
                    </td>
                </tr>

                <tr>
                    <td align="left" valign="top"><strong>Enter Email:</strong></td>
                    <td align="left">
                        <asp:TextBox ID="txtEmail" runat="server" Width="220px"></asp:TextBox>
                        <asp:RequiredFieldValidator ID="rfvEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Enter Email" ForeColor="Red"></asp:RequiredFieldValidator>
                        <br />
                        <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid Email Format" ForeColor="Red" ValidationExpression="\w+([-.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Age:</strong></td>
                    <td align="left">
                        <asp:TextBox ID="txtAge" runat="server" Width="220px"></asp:TextBox>
                        <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" ErrorMessage="Age must be between 18 to 30" ForeColor="Red" MaximumValue="30" MinimumValue="18" Type="Integer"></asp:RangeValidator>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Password:</strong></td>
                    <td align="left">
                        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Confirm Password:</strong></td>
                    <td align="left">
                        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password" Width="220px"></asp:TextBox>
                        <asp:CompareValidator ID="cvPassword" runat="server" ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match" ForeColor="Red"></asp:CompareValidator>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Gender:</strong></td>
                    <td align="left">
                        <asp:RadioButtonList ID="rblGender" runat="server" RepeatDirection="Horizontal">
                            <asp:ListItem>Male</asp:ListItem>
                            <asp:ListItem>Female</asp:ListItem>
                        </asp:RadioButtonList>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Select Branch:</strong></td>
                    <td align="left">
                        <asp:DropDownList ID="ddlBranch" runat="server" Width="228px">
                            <asp:ListItem>Select Branch</asp:ListItem>
                            <asp:ListItem>CSE</asp:ListItem>
                            <asp:ListItem>IT</asp:ListItem>
                            <asp:ListItem>CE</asp:ListItem>
                            <asp:ListItem>ME</asp:ListItem>
                            <asp:ListItem>EE</asp:ListItem>
                        </asp:DropDownList>
                    </td>
                </tr>

                <tr>
                    <td align="left" valign="top"><strong>Select Event:</strong></td>
                    <td align="left">
                        <asp:CheckBoxList ID="cblEvent" runat="server">
                            <asp:ListItem>Workshop</asp:ListItem>
                            <asp:ListItem>Seminar</asp:ListItem>
                            <asp:ListItem>Hackathon</asp:ListItem>
                        </asp:CheckBoxList>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Select Date:</strong></td>
                    <td align="left">
                        <asp:TextBox ID="txtDate" runat="server" TextMode="Date" Width="220px"></asp:TextBox>
                    </td>
                </tr>

                <tr>
                    <td align="left"><strong>Profile Image:</strong></td>
                    <td align="left">
                        <asp:FileUpload ID="fuImage" runat="server" Width="228px" />
                    </td>
                </tr>

                <tr>
                    <td></td>
                    <td align="left">
                        <br />
                        <asp:Button ID="btnRegister" runat="server" OnClick="btnRegister_Click" Text="Register Now" Height="30px" Width="120px" />
                    </td>
                </tr>

                <tr>
                    <td colspan="2" align="center">
                        <asp:ValidationSummary ID="ValidationSummary1" runat="server" ForeColor="Red" />
                    </td>
                </tr>
            </table>

            <br /><br />
            <asp:Label ID="lblMessage" runat="server" ForeColor="Black" Font-Size="Medium"></asp:Label>
        </div>
    </form>
</body>
</html>