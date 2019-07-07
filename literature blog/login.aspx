<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="literature_blog.WebForm5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            height: 33px;
        }
        .auto-style2 {
            height: 33px;
            visibility: visible;
        }
        .auto-style3 {
            height: 46px;
        }
    </style>
</head>
<body style="background-image: url('Images/background.jpeg')">
    <div id="Heading" style="font-size: 60px; color: #000080; vertical-align: middle; text-align: center; background-color: #008080;">
            literature Blog</div>
        <div id="title" style="font-size: 40px; background-color: #C0C0C0; color: #000080; text-align: center;">
            Online Book Reading Website</div>
    <div style="font-size: x-large; background-color: #C0C0C0; color: #FF0000; text-align: center;">Log In Here</div>
    <form id="form1" runat="server">

                <p style="background-color: #000080; color: #FFFFFF;">
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                Not Registered?
                <asp:HyperLink ID="SignUp" runat="server" Font-Bold="True" Font-Italic="True" Font-Underline="True" NavigateUrl="~/SignUp.aspx" ForeColor="White">Sign Up</asp:HyperLink>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <asp:HyperLink ID="Forgot" runat="server" NavigateUrl="~/ForgotPass.aspx" ForeColor="White">
                    Forgot Password</asp:HyperLink>
                ?</p>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;


     <table style="height: 69px; width: 190px; margin-left: 516px;" id="table">
                <tr>
                    <td style="font-size: large; background-color: #3366FF; color: #000000;" class="auto-style1">&nbsp;&nbsp;&nbsp; Email:</td>
                    <td class="auto-style2" style="background-color: #C0C0C0; display: block;">
                        <asp:TextBox ID="email" runat="server" BackColor="White" Font-Bold="True" ForeColor="Black" Width="250px" BorderColor="Black" BorderWidth="5px" Height="34px"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td style="font-size: large; background-color: #3366FF; color: #000000;" class="auto-style3">&nbsp;Password: </td>
                    <td style="background-color: #C0C0C0" class="auto-style3">
                        <asp:TextBox ID="pword" runat="server" BackColor="White" ForeColor="Black" Width="250px" BorderColor="Black" BorderWidth="5px" TextMode="Password" Height="30px" MaxLength="30"></asp:TextBox>
                    </td>
                </tr>
        
               
            </table>
                <br />
                <br />
          <asp:Button ID="ForgotPass" runat="server" Text="Login" Width="102px" BackColor="#3366FF" OnClick="ForgotPass_Click" style="margin-left: 515px" />
       
        
     
        
     </form>
</body>
</html>
