<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="login.aspx.cs" Inherits="school_management.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="sm.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 30px;
        }
        .auto-style3 {
            text-decoration: underline;
        }
        </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div style="text-align: center" id="header">
    
        <br />
        <strong><span>SCHOOL MANAGEMENT SYSTEM</span>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp
       <asp:Button ID="btn" Text=" login" runat="server" OnClick="btn_Click" Height="33px" Width="71px" />
         <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="login.aspx">Login</asp:HyperLink>-->&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink2" runat="server" NavigateUrl ="register.aspx">Register</asp:HyperLink>&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl ="about.aspx">About</asp:HyperLink>&nbsp;&nbsp;<br />
        <br />
        </div><br />
        <hr />
        <br />
        <div id ="pagename">
        
        &nbsp;&nbsp;<br />
        <span class="auto-style3">LOGIN PAGE</span>
        <br /><br/>
            
            </div>
        <br />
        <hr />
        <br />
    
    
        <table class="auto-style1">
            <tr>
                <td class="auto-style2"></td>
                <td class="auto-style2">Login ID :
                    <asp:TextBox ID="TextBox1" runat="server" Height="16px" Width="148px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="REQUIRED!!"></asp:RequiredFieldValidator>
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td style="text-align: center">Password :
                    <asp:TextBox ID="TextBox2" runat="server" TextMode="Password" Height="16px" Width="148px"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox1" ErrorMessage="REQUIRED!"></asp:RequiredFieldValidator>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Login" Width="70px" />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Label ID="Label1" runat="server" Visible="False"></asp:Label>
                    <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                </td>
                <td aria-hidden="True">&nbsp;</td>
            </tr>
        </table>
    </form>
</body>
</html>
