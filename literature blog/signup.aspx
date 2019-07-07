<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="signup.aspx.cs" Inherits="literature_blog.WebForm3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
    <style type="text/css">
        #form1 {
            width: 555px;
            height: 286px;
            margin-left: 462px;
        }
    </style>
</head>
<<body style="background-image: url('Images/sign-up-page-background-images-2.jpg')">>
    <form id="form1" runat="server">
        &nbsp;
        <asp:Table ID="Table1" runat="server" Height="117px" Width="317px">
            <asp:TableRow>
                <asp:TableCell>email_id:</asp:TableCell>
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox1" runat="server" TextMode="Email">

                     </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
             <asp:TableRow>
                <asp:TableCell>password:</asp:TableCell>
                 <asp:TableCell>
                     <asp:TextBox ID="TextBox2" runat="server" TextMode="Password">

                     </asp:TextBox>
                </asp:TableCell>
            </asp:TableRow>
        </asp:Table>
        &nbsp;<asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Signup" BackColor="#6699FF" ForeColor="#000066" />
    &nbsp;
    </form>
</body>
</html>
