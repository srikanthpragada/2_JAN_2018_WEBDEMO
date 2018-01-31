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
        <asp:DataList ID="DataList1" runat="server" DataSourceID="sdProducts" Width="100%">
            <HeaderTemplate>
                <h1>Products</h1>
            </HeaderTemplate>
            <ItemTemplate>
                <h3> <%# Eval("prodname") %></h3>
                <h4> <%# Eval("price") %></h4>
                <h5> <%# Eval("remarks") %></h5>
            </ItemTemplate>
            <SeparatorTemplate>
                <hr />
            </SeparatorTemplate>
        </asp:DataList>
        <asp:SqlDataSource ID="sdProducts" runat="server" 
            ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
            SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    </form>
</body>
</html>
