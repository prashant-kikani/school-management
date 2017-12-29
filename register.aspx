<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="register.aspx.cs" Inherits="school_management.register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="sm.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .auto-style15 {
            text-align: center;
        }
        
        .auto-style13 {
            width: 100%;
        }
        .auto-style21 {
            height: 36px;
        }
        .auto-style22 {
            height: 51px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
            <div style="text-align: center" id="header">
    
        <br />
        <strong><span>SCHOOL MANAGEMENT SYSTEM</span>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp
       <asp:Button ID="btn" Text=" login" runat="server" OnClick="btn_Click" Height="35px" Width="68px" />
         <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="login.aspx">Login</asp:HyperLink>-->&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl ="about.aspx">About</asp:HyperLink>&nbsp;&nbsp;<br />
        <br />
        </div><br />
        <hr />
        <br />
        <div id ="pagename">
        
        &nbsp;&nbsp;<br />
        <span class="auto-style3">REGISTRATION PAGE</span>
        <br /><br/>
            
            </div>
        <br />
        <hr />
        <br />
            <table class="auto-style13">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    
                        <table class="auto-style13">
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant Name : <asp:TextBox ID="TextBox3" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Required!!"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox3" ErrorMessage="Text Required!!" ValidationExpression="[a-zA-Z]{1,}"></asp:RegularExpressionValidator>
                                    <br /><br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant Contact No.&nbsp; :&nbsp; <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="Required!!"></asp:RequiredFieldValidator>
                                    <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox2" ErrorMessage="10 digit no.!!" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                                    <br /><br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style22"></td>
                                <td class="auto-style22">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant Address&nbsp; :&nbsp;
                                    <asp:TextBox ID="TextBox4" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="TextBox4" ErrorMessage="Required!!"></asp:RequiredFieldValidator>
                                    <br /><br />
                                </td>
                                <td class="auto-style22"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant Email&nbsp; :&nbsp;
                                    <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="TextBox5" ErrorMessage="Required!!"></asp:RequiredFieldValidator>
                                    <br />
                                    <br />
                                    Applicant Blood Group :
                                    <asp:DropDownList ID="DropDownList6" runat="server">
                                        <asp:ListItem>A+</asp:ListItem>
                                        <asp:ListItem>A-</asp:ListItem>
                                        <asp:ListItem>B+</asp:ListItem>
                                        <asp:ListItem>B-</asp:ListItem>
                                        <asp:ListItem>AB+</asp:ListItem>
                                        <asp:ListItem>AB-</asp:ListItem>
                                        <asp:ListItem>O+</asp:ListItem>
                                        <asp:ListItem>O-</asp:ListItem>
                                        <asp:ListItem></asp:ListItem>
                                    </asp:DropDownList>
                                    <br />
                                    <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Applicant DOB :
                                    <asp:DropDownList ID="DropDownList3" runat="server">
                                    </asp:DropDownList>
&nbsp; /&nbsp;
                                    <asp:DropDownList ID="DropDownList4" runat="server">
                                    </asp:DropDownList>
&nbsp; /&nbsp;
                                    <asp:DropDownList ID="DropDownList5" runat="server">
                                    </asp:DropDownList>
                                    <br /><br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>Applicant Class&nbsp; :&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server">
                        <asp:ListItem Value="c1">class 1</asp:ListItem>
                        <asp:ListItem Value="c2">class 2</asp:ListItem>
                        <asp:ListItem Value="c3">class 3</asp:ListItem>
                        <asp:ListItem Value="c4">class 4</asp:ListItem>
                        <asp:ListItem Value="c5">class 5</asp:ListItem>
                        <asp:ListItem Value="c6">class 6</asp:ListItem>
                        <asp:ListItem Value="c7">class 7</asp:ListItem>
                        <asp:ListItem Value="c8">class 8</asp:ListItem>
                        <asp:ListItem Value="c9">class 9</asp:ListItem>
                        <asp:ListItem Value="c10">class 10</asp:ListItem>
                    </asp:DropDownList>
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>
                                    <br />
                                    <asp:Label ID="Label1" runat="server" Text="Label"></asp:Label>
&nbsp;<asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                                    <br />
                                    <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                                    <br />
                                </td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td class="auto-style21"></td>
                                <td class="auto-style21">
                                    <asp:Button ID="Button1" runat="server" Height="32px" OnClick="Button1_Click" Text="Register" Width="76px" />
                                </td>
                                <td class="auto-style21"></td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                            <tr>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                                <td>&nbsp;</td>
                            </tr>
                        </table>
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                </table>
    
    </div>
    </form>
</body>
</html>
