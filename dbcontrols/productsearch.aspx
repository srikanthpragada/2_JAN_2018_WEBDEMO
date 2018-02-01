<%@ Page Language="C#" %>
<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnSearch_Click(object sender, EventArgs e)
    {
         try
        {
            using (SqlConnection con = new SqlConnection
                 (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial catalog=msdb"))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from products where prodname like @name", con);
                da.SelectCommand.Parameters.AddWithValue("@name", "%" + txtName.Text + "%");

                DataSet ds = new DataSet();
                da.Fill(ds, "products"); // open connection, retrive data and close connection

                gvProducts.DataSource = ds.Tables[0];
                gvProducts.DataBind();
            }
        }
        catch(Exception ex)
        {
            Response.Write("Error : " + ex.Message);
        }
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
     <h1>Product Search</h1>
     Name <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSearch" runat="server" Text="Search" OnClick="btnSearch_Click" />
        <p></p>
        <asp:GridView ID="gvProducts" Width="100%" runat="server"></asp:GridView>
    </form>
</body>
</html>
