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
        <div>
            <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="invno"
                 DataSourceID="sdsSales"  AllowSorting="True" PageSize="4">
                <Columns>
                    <asp:BoundField DataField="invno" HeaderText="Invno" InsertVisible="False" ReadOnly="True" SortExpression="invno" />
                    <asp:BoundField DataField="prodid" HeaderText="prodid" SortExpression="prodid" />
                    <asp:BoundField DataField="transdate" HeaderText="transdate" SortExpression="transdate" 
                        DataFormatString="{0:dd-MM-yyyy}" />
                    <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty"
                        ItemStyle-HorizontalAlign="Right" />
                    <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" 
                        ItemStyle-HorizontalAlign="Right"  DataFormatString="{0:c}" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="sdsSales" runat="server" 
                ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
                SelectCommand="SELECT * FROM [sales]"></asp:SqlDataSource>
        </div>
    </form>
</body>
</html>
