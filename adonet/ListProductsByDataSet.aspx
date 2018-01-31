<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data.SqlClient" %>
<%@ Import Namespace="System.Data" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection con = new SqlConnection
                 (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial catalog=msdb"))
            {
                SqlDataAdapter da = new SqlDataAdapter("select * from products", con);
                DataSet ds = new DataSet();
                da.Fill(ds, "products"); // open connection, retrive data and close connection

                string output = "<ul>";
                foreach(DataRow row in ds.Tables[0].Rows) 
                {
                    output += "<li>" + row["prodname"] + "," + row["price"] + "</li>";
                }

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
