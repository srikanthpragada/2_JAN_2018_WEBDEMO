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
         <h2>Product By Category</h2>
         Select Category <br />
         <asp:DropDownList ID="ddlCategories" runat="server" DataSourceID="sdsCategories" DataTextField="catdesc" DataValueField="catcode"></asp:DropDownList>
         <asp:SqlDataSource ID="sdsCategories" runat="server" ConnectionString="<%$ ConnectionStrings:msdbConnectionString %>" SelectCommand="SELECT * FROM [categories]"></asp:SqlDataSource>
    </form>
</body>
</html>
