<%@ Page Language="C#" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Session.Add(txtKey.Text, txtValue.Text);
        Response.Write("Key Added!");
    }

    protected void btnList_Click(object sender, EventArgs e)
    {
        string values = "";
        foreach( string name in Session.Keys)
        {
            values += name + " - " + Session[name] + "<br/>";
        }
        lblOutput.Text = values;
    }

    protected void btnRemove_Click(object sender, EventArgs e)
    {
        Session.Remove(txtKey.Text);
        Response.Write("Key has been removed!");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <h1>Session Demo</h1>
  Key : <asp:TextBox ID="txtKey" runat="server"></asp:TextBox>
      Value : <asp:TextBox ID="txtValue" runat="server"></asp:TextBox>
  <p />
      <asp:Button ID="btnAdd" runat="server" Text="Add" OnClick="btnAdd_Click" />
      <asp:Button ID="btnRemove" runat="server" Text="Remove" OnClick="btnRemove_Click"  />
      <asp:Button ID="btnList" runat="server" Text="List" OnClick="btnList_Click"  />
      <p />
      <asp:Label ID="lblOutput" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
