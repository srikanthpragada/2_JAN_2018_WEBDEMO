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
        <h2>List Of Categories</h2>
        <asp:GridView ID="GridView1" runat="server" 
            DataKeyNames="catcode" 
            DataSourceID="SqlDataSource1">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server"
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>

        <h2>Products</h2>
        <asp:GridView ID="GridView2" runat="server" 
            DataSourceID="SqlDataSource2">
        </asp:GridView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server"
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
       
    </form>
</body>
</html>
