<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="student.aspx.cs" Inherits="school_management.student1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="sm.css" rel="stylesheet" type="text/css" />
    <style type="text/css">

        .auto-style11 {
            text-decoration: underline;
        }
        .auto-style13 {
            width: 100%;
        }
        .auto-style14 {
            height: 23px;
        }
        .auto-style15 {
            text-align: center;
        }
        .auto-style17 {
            height: 23px;
            text-align: center;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style21 {
            text-decoration: underline;
            font-size: large;
        }
    </style>
</head>
<body><center>
    <form id="form1" runat="server">
        <p class="auto-style15">
            <div class="auto-style15" id="header"><br />
            <strong><span>SCHOOL MANAGEMENT SYSTEM</span>&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp
 <asp:Button ID="btn" Text=" login" runat="server" OnClick="btn_Click" Height="37px" Width="74px" />
         <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="login.aspx">Login</asp:HyperLink>-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl ="about.aspx">About</asp:HyperLink>&nbsp;&nbsp;<br />
                <br />
       
                </div><br />
               <hr /><br /><div id="pagename" class="auto-style15">
                   <br/>
                <span class="auto-style11">STUDENT&#39;S PAGE</span><br /><br /> </div>
                    <br/><hr/>

      
                
        <br />
                 
        
            <table class="auto-style13">
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">Hello, <strong>
                        <asp:Label ID="Label1" runat="server" Text="XX"></asp:Label>
                        </strong></td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">***<span class="auto-style11">&nbsp; <span class="auto-style20">YOUR MARK DETAILS</span>&nbsp; </span>***</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">Hindi&nbsp; :&nbsp;
                        <asp:Label ID="Label2" runat="server" Text="Label"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style17">Gujarati&nbsp; :&nbsp;
                        <asp:Label ID="Label3" runat="server" Text="Label"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">English&nbsp; :&nbsp;
                        <asp:Label ID="Label4" runat="server" Text="Label"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">Maths&nbsp; :&nbsp;
                        <asp:Label ID="Label5" runat="server" Text="Label"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">Drawing&nbsp; :&nbsp;
                        <asp:Label ID="Label6" runat="server" Text="Label"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style14">
                        <br />
                        <asp:Button ID="Button1" runat="server" Height="38px" OnClick="Button1_Click" Text="Generate PDF" Width="111px" />
                        <br />
                        <br />
                        <hr />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style14"></td>
                    <td class="auto-style17">***<span class="auto-style11">&nbsp;<span class="auto-style20"> YOUR ATTENDANCE DETAILS&nbsp;</span> </span>***</td>
                    <td class="auto-style14"></td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">
                        <asp:GridView ID="GridView1" runat="server" CellPadding="5" CellSpacing="10" HorizontalAlign="Center" Width="65%">
                        </asp:GridView>
&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;<hr /></td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">***&nbsp; <span class="auto-style21">FEE STATUS</span> ***</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                    <td class="auto-style15">&nbsp;</td>
                </tr>
            </table>
            <div class="auto-style15">
                
                &nbsp;Your Fee is&nbsp; <strong>
                <asp:Label ID="Label7" runat="server" CssClass="auto-style11" Text="Label"></asp:Label>
                </strong></div>
        </p>
    </form></center>
</body>
</html>
