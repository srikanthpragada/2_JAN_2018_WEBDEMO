<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void Page_Load(object sender, EventArgs e)
    {
        // find out city  of client
        HttpCookie c = Request.Cookies["city"];
        if (c == null)
            Response.Redirect("selectcity.aspx");
        else
            lblMovies.Text = "Movies in " + c.Value; 



    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <h1>Movies</h1>
      <asp:Label ID="lblMovies" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
