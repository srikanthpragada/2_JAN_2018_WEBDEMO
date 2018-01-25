<%@ Page Language="C#" %>

<!DOCTYPE html>
<script runat="server">

    protected void btnGetFee_Click(object sender, EventArgs e)
    {
        int fee;

        fee = Int32.Parse(ddlCourses.SelectedItem.Value);

        if (rbMorning.Checked)
            fee = fee - fee * 10 / 100;
        else
            if (rbAfternoon.Checked)
            fee = fee - fee * 20 / 100;

        if (cbOldStudent.Checked)
            fee = fee - fee * 10 / 100;


        lblFee.Text = fee.ToString("c");
    }

    protected void Page_Load(object sender, EventArgs e)
    {
        Response.Write("Postback : " + Page.IsPostBack);
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Course Fee Calculator</title>
    <style>
        .fee {
            color : blue;
            font-size : 25pt;
            font-weight : bold;
            font-family : veradan;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <h2>Course Fee Calculator</h2>
        Select Course
        <br />
        <asp:DropDownList ID="ddlCourses" runat="server">
            <asp:ListItem Value="5500" Text="Microsoft.Net" />
            <asp:ListItem Value="4000" Text="Python Programming" />
            <asp:ListItem Value="1500" Text="Angular 4" />
            <asp:ListItem Value="4500">Java EE</asp:ListItem>
        </asp:DropDownList>
        <p></p>
        Timings
        <br />
        <asp:RadioButton ID="rbMorning" runat="server" Text="Morning" GroupName="timings" />
        <asp:RadioButton ID="rbAfternoon" runat="server" Text="Afternoon" GroupName="timings" />
        <asp:RadioButton ID="rbEvening" runat="server" Text="Evening" GroupName="timings" Checked="true" />
        <p></p>
        <asp:CheckBox ID="cbOldStudent" runat="server" />Are you an old student?
        <p></p>
        <asp:Button ID="btnGetFee" runat="server" Text="Get Fee" OnClick="btnGetFee_Click" />
        <p></p>
        <asp:Label ID="lblFee" CssClass="fee" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
