<%@ Page Language="C#" %>
<%@ Import Namespace="System.IO" %>

<!DOCTYPE html>

<script runat="server">

    protected void btnUpload_Click(object sender, EventArgs e)
    {
        if (!FileUpload1.HasFile)
        {
            lblOutput.Text = "Sorry! Select a file and upload!";
            return;
        }

        StreamReader sr = new StreamReader(FileUpload1.PostedFile.InputStream);

        string output = "Mobile Number are taken from : " +  FileUpload1.FileName + "<ul>";
        while (true) {
            string line = sr.ReadLine();
            if (line == null)
                break;
            output += "<li>" + line + "</li>";
        }

        lblOutput.Text = output + "</ul>";

        sr.Close();
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
  <title></title>
</head>
<body>
  <form id="form1" runat="server">
  <h2>Upload Mobile Numbers</h2>
  Select File : <asp:FileUpload ID="FileUpload1" runat="server" />
  <p></p>
      <asp:Button ID="btnUpload" runat="server" Text="Upload" OnClick="btnUpload_Click" />
      <p></p>
      <asp:Label ID="lblOutput" EnableViewState="false" runat="server" Text=""></asp:Label>
  </form>
</body>
</html>
