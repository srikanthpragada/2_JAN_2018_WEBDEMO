<%@ Page Language="C#" %>

<%@ Import Namespace="System.Data.SqlClient" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnConnect_Click(object sender, EventArgs e)
    {
        try
        {
            using (SqlConnection con = new SqlConnection
                 (@"Data Source=(localdb)\mssqllocaldb;Integrated Security=True;Initial catalog=msdb"))
            {
                con.Open();
                lblMsg.Text = "Successfully connected to LocalDB";
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
        <asp:Button ID="btnConnect" runat="server" Text="Connect To LocalDb" OnClick="btnConnect_Click" />
        <p></p>
        <asp:Label ID="lblMsg" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
