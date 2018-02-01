<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Products By Category</title>
    <style>
        .empty { color : white; background-color : red; font-size : 14pt}
    </style>
</head>
<body>
    <form id="form1" runat="server">
         <h2>Product By Category</h2>
         Select Category <br />
         <asp:DropDownList ID="ddlCategories" runat="server" 
             DataSourceID="sdsCategories" 
             DataTextField="catdesc" 
             DataValueField="catcode" AutoPostBack="True"></asp:DropDownList>
         <p></p>

        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            EmptyDataText="No products found!" EmptyDataRowStyle-CssClass="empty"
            width="100%" DataKeyNames="prodid" DataSourceID="sdsProducts">
            <Columns>
                <asp:BoundField DataField="prodid" HeaderText="prodid" InsertVisible="False" ReadOnly="True" SortExpression="prodid" />
                <asp:BoundField DataField="prodname" HeaderText="prodname" SortExpression="prodname" />
                <asp:BoundField DataField="price" HeaderText="price" SortExpression="price"  DataFormatString="{0:c}" ItemStyle-HorizontalAlign="Right"/>
                <asp:BoundField DataField="qoh" HeaderText="qoh" SortExpression="qoh"  ItemStyle-HorizontalAlign="Right" />
                <asp:BoundField DataField="remarks" HeaderText="remarks" SortExpression="remarks" />
            </Columns>
         </asp:GridView>

         <asp:SqlDataSource ID="sdsProducts" runat="server"
             ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
             SelectCommand="SELECT * FROM [products] WHERE ([catcode] = @catcode)">
             <SelectParameters>
                 <asp:ControlParameter ControlID="ddlCategories" Name="catcode" PropertyName="SelectedValue" Type="String" />
             </SelectParameters>
         </asp:SqlDataSource>

         <asp:SqlDataSource ID="sdsCategories" runat="server" 
             ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" 
             SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
    </form>
</body>
</html>
