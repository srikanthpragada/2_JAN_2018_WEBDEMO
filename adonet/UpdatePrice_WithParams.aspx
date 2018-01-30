<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection con = new SqlConnection
                 (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial catalog=msdb"))
            {
                con.Open();
                String sqlcmd = "update products set price = @price where prodid = @prodid";
                SqlCommand cmd = new SqlCommand(sqlcmd, con);
                cmd.Parameters.AddWithValue("@price", txtPrice.Text);
                cmd.Parameters.AddWithValue("@prodid", txtProdid.Text);

                int count = cmd.ExecuteNonQuery();  // DML 
                if (count == 1)
                    lblMsg.Text = "Updated Price Successfully!";
                else
                    lblMsg.Text = "Product Not Found!";
            }
        }
        catch(Exception ex)
        {
            lblMsg.Text = "Error : " + ex.Message;
        }

    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Update Product Price</h1>
        Product Id <br />
        <asp:TextBox ID="txtProdid" runat="server"></asp:TextBox>
        <p></p>
        New Price <br />
        <asp:TextBox ID="txtPrice" runat="server"></asp:TextBox>
        <p />
        <asp:Button ID="btnUpdate" runat="server" Text="Update Price" OnClick="btnUpdate_Click"/>
        <p></p>
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
