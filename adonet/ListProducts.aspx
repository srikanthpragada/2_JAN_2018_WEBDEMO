<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection con = new SqlConnection
                 (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial catalog=msdb"))
            {
                con.Open();
                SqlCommand cmd = new SqlCommand("select * from products where price > 10000", con);
                SqlDataReader dr = cmd.ExecuteReader();

                string output = "<ul>";
                while (dr.Read())  // Read returns false on end of reader 
                {
                    output += "<li>" + dr["prodname"] + "," + dr["price"] + "</li>";
                }

                dr.Close();
                lblMsg.Text = output + "</ul>";
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
        <h1>List of Products</h1>
        
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
