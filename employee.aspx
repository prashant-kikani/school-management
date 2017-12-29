<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="employee.aspx.cs" Inherits="school_management.faculty" %>

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
            height: 23px;
        }
        .auto-style3 {
            height: 30px;
        }
        .auto-style4 {
            height: 336px;
        }
        .auto-style5 {
            text-decoration: underline;
        }
        .auto-style6 {
            font-size: large;
        }
    </style>
</head>
<body style="text-align: center">
    <form id="form1" runat="server">
    <div>
    <div style="text-align: center" id="header">
    
        <br class="auto-style5" />
        <strong><span>SCHOOL MANAGEMENT SYSTEM</span>&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp
         <asp:Button ID="btn" Text=" login" runat="server" OnClick="btn_Click1" Height="39px" Width="75px" />
         <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="login.aspx">Login</asp:HyperLink>-->&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl ="about.aspx">About</asp:HyperLink>&nbsp;&nbsp;<br />
        <br />
        </div><br />
        
        <hr /><br /><div id ="pagename">
        <br />
        &nbsp;&nbsp;<span class="auto-style5">EMPLOYEE&#39;S PAGE</span>
        <br />
            <br/>
        </div><br /><hr />
            
        Hello<span class="auto-style5">, <strong>
        <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
        </strong>
        <br />
        <br />
            
        </span>Your Salary is<span class="auto-style5">
            
        </span><strong>
        <asp:Label ID="Label14" runat="server" Text="Label" CssClass="auto-style5"></asp:Label>
        .<br />
        </strong><br />
    
    
        <table class="auto-style1">
            <tr>
                <td>
                    
                    <br />
                    <br />
                    
                    <br />***<span class="auto-style5">&nbsp; <span class="auto-style6">TO UPDATE MARKS</span>&nbsp;&nbsp; </span>***<br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">Class :&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Subject :
                    <asp:DropDownList ID="DropDownList1" runat="server">
                        <asp:ListItem Value="sub1">hindi</asp:ListItem>
                        <asp:ListItem Value="sub2">gujarati</asp:ListItem>
                        <asp:ListItem Value="sub3">english</asp:ListItem>
                        <asp:ListItem Value="sub4">maths</asp:ListItem>
                        <asp:ListItem Value="sub5">drawing</asp:ListItem>
                    </asp:DropDownList>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Out of&nbsp; :&nbsp;&nbsp;
                    <asp:TextBox ID="TextBox5" runat="server" AutoPostBack="True" OnTextChanged="TextBox5_TextChanged"></asp:TextBox>
&nbsp;&nbsp;&nbsp;
                    <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Add" Height="34px" Width="52px" />
                    <br />
                    <br />
                </td>
                <td class="auto-style3">
                    &nbsp;</td>
                <td class="auto-style3"></td>
            </tr>
            <tr>
                <td class="auto-style2">
                    <br />
                    <br />
                </td>
                <td class="auto-style2"></td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td>Student&#39;s ID&nbsp; :&nbsp; 
                    <asp:DropDownList ID="DropDownList5" runat="server">
                    </asp:DropDownList>
                    <br />
                    <br />
                </td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style4">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Enter Marks&nbsp; :&nbsp;
                    <asp:TextBox ID="TextBox2" runat="server" OnTextChanged="TextBox2_TextChanged"></asp:TextBox>
&nbsp; out of&nbsp;
                    <asp:Label ID="Label9" runat="server" Text="100"></asp:Label>
                    <br />
                    <br />
                    <br />
                    &nbsp;<asp:Label ID="Label13" runat="server" Text="Enter Properly..." Visible="False"></asp:Label>
                    <br />
                    <br />
                    <asp:Button ID="Button2" runat="server" OnClick="Button2_Click" Text="Add" Height="35px" Width="55px" />
                    <br />
                    <br />
                    <br />
                    <hr />
                    <br />
                    <br />
                    <br />
                    ***<span class="auto-style5">&nbsp; <span class="auto-style6">TO UPDATE ATTENDANCE</span>&nbsp; </span>*** <br />
                    <br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    Class&nbsp; :&nbsp;
                    <asp:DropDownList ID="DropDownList3" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList3_SelectedIndexChanged">
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
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<br />
                    <br />
                    Select Checkboxes&nbsp;<br />
                    <br />
                    <asp:GridView ID="GridView1" runat="server">
                        <columns>
                            <asp:TemplateField HeaderText ="checklist">
                                <ItemTemplate>
                                    <input name="mycheck" type="checkbox" value ='<%#Eval("stu_id")%>'/>
                                </ItemTemplate>
                            </asp:TemplateField>
                        </columns>
                    </asp:GridView>
                    <script type = "text/javascript">
                         function RadioCheck(rb) {
                            var gv = document.getElementById("<%=GridView1.ClientID%>");
                            var rbs = gv.getElementsByTagName("input");
                            var row = rb.parentNode.parentNode;
                            for (var i = 0; i < rbs.length; i++) {
                                if (rbs[i].type == "checkbox") {
                                    if (rbs[i].checked && rbs[i] != rb) {
                                        rbs[i].checked = false;
                                        break;
                                    }
                                }
                            }
                        }    
                    </script>
                    &nbsp;<br />
                    <br />
                    <asp:Label ID="Label16" runat="server" Text="Enter Properly..." Visible="False"></asp:Label>
                    &nbsp;
                    <asp:Label ID="Label17" runat="server" Text="Label"></asp:Label>
                    <br />
                    <asp:Button ID="Button4" runat="server" Text="Add" Height="32px" OnClick="Button4_Click1" Width="54px" />
                    <br />
                    <br />
                    <hr />
                    <table class="auto-style1">
                        <tr>
                            <td>&nbsp;</td>
                            <td>
                                <br />
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
                    <br />
                    </td>
                </tr>
            </table>
        </div>
        </form>
    </body>
    </html>