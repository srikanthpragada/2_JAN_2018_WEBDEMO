<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Test.aspx.cs" Inherits="Test" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        Number : <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnPrime" runat="server" Text="Check Prime" OnClick="btnPrime_Click" />
        
    </form>
</body>
</html>
