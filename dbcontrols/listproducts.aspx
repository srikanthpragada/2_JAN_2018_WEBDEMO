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
         <h1>Products</h1>
        <asp:GridView ID="gvProducts" runat="server" AutoGenerateColumns="False" Width="100%"
            DataKeyNames="prodid" DataSourceID="sdsProducts">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="prodid" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price" />
                <asp:BoundField DataField="qoh" HeaderText="qoh" SortExpression="qoh" />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
                <asp:BoundField DataField="catcode" HeaderText="catcode" SortExpression="catcode" />
                <asp:HyperLinkField DataNavigateUrlFields="prodid" 
                    DataNavigateUrlFormatString="salesbyproduct.aspx?prodid={0}" Text="Sales" />
            </Columns>
         </asp:GridView>
         <asp:SqlDataSource ID="sdsProducts" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [products]"></asp:SqlDataSource>
    </form>
</body>
</html>
