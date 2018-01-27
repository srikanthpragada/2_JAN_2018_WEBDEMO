<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Registration</h2>
        Email Address
        <br />
        <asp:TextBox ID="txtEmail" runat="server"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server"
            ControlToValidate="txtEmail"
            ErrorMessage="Email is required"></asp:RequiredFieldValidator>
        <p></p>

        Password
        <br />
        <asp:TextBox ID="txtPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server"
            ControlToValidate="txtPassword"
            ErrorMessage="Password is required"></asp:RequiredFieldValidator>
        <p></p>

        Confirm Password
        <br />
        <asp:TextBox ID="txtConfirmPassword" runat="server" TextMode="Password"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server"
            ControlToValidate="txtConfirmPassword"
            Display ="Dynamic"
            ErrorMessage="Confirm password is required"></asp:RequiredFieldValidator>

        <asp:CompareValidator ID="CompareValidator1" runat="server" 
            ControlToValidate="txtConfirmPassword"
            ControlToCompare="txtPassword"
            Operator="Equal"
            ErrorMessage="Confirm password is not same as password"></asp:CompareValidator>
        <p></p>
        <asp:Button ID="btnRegister" runat="server" Text="Register" />
    </form>
</body>
</html>
