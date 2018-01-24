<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnCalculate_Click(object sender, EventArgs e)
    {
        double amount, disrate, discount;

        amount = Double.Parse(txtAmount.Text);
        disrate = Double.Parse(txtDisRate.Text);

        discount = amount * disrate / 100;
        lblDiscount.Text = discount.ToString("c"); 
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Discount Calculation</h2>
        Amount
        <br />
        <asp:TextBox ID="txtAmount" runat="server"></asp:TextBox>
        <p></p>
        Discount Rate
        <br />
        <asp:TextBox ID="txtDisRate" runat="server"></asp:TextBox>
        <p></p>
        <asp:Button ID="btnCalculate" runat="server" Text="Calculate" OnClick="btnCalculate_Click" />
        <p></p>
        <asp:Label ID="lblDiscount" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
