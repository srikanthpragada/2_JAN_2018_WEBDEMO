﻿<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Sales For Product</title>
</head>
<body>
    <form id="form1" runat="server">
        <h1>Sales For Product [<%= Request.QueryString["prodid"] %>] </h1>
        <asp:GridView ID="GridView1" runat="server" width="100%" AutoGenerateColumns="False" DataKeyNames="invno" DataSourceID="sdsSales">
            <Columns>
                <asp:BoundField DataField="invno" HeaderText="invno" InsertVisible="False" ReadOnly="True" SortExpression="invno" />
                <asp:BoundField DataField="prodid" HeaderText="prodid" SortExpression="prodid" />
                <asp:BoundField DataField="transdate" HeaderText="transdate" SortExpression="transdate" />
                <asp:BoundField DataField="qty" HeaderText="qty" SortExpression="qty" />
                <asp:BoundField DataField="amount" HeaderText="amount" SortExpression="amount" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="sdsSales" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [sales] WHERE ([prodid] = @prodid) ORDER BY [transdate] DESC">
            <SelectParameters>
                <asp:QueryStringParameter Name="prodid" QueryStringField="prodid" Type="Int32" />
            </SelectParameters>
        </asp:SqlDataSource>
    </form>
</body>
</html>
