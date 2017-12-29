<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="admin.aspx.cs" Inherits="school_management.admin1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="sm.css" rel="stylesheet" type="text/css" />
    <style type="text/css">
        .gview{
    margin: 5px;
    padding: 5px;
    border-width: 5px;
    text-align: center;
    font-family: "Segoe UI", Times, serif;
    font-size: 15px;
    border-spacing: 10px;
}
        .auto-style1 {
            width: 100%;
        }
        .auto-style3 {
            height: 23px;
        }
        .auto-style4 {
            height: 113px;
        }
        .auto-style5 {
            height: 37px;
        }
        .auto-style7 {
            height: 30px;
        }
        .auto-style8 {
            height: 35px;
        }
        .auto-style9 {
            height: 49px;
        }
        .auto-style10 {
            height: 48px;
        }
        .auto-style11 {
            text-decoration: underline;
        }
        .auto-style12 {
            text-align: center;
        }
        .auto-style13 {
            height: 35px;
            text-align: center;
        }
        .auto-style14 {
            height: 30px;
            text-align: center;
        }
        .auto-style15 {
            height: 48px;
            text-align: center;
        }
        .auto-style16 {
            height: 23px;
            text-align: center;
        }
        .auto-style17 {
            height: 37px;
            text-align: center;
        }
        .auto-style18 {
            height: 113px;
            text-align: center;
        }
        .auto-style19 {
            height: 49px;
            text-align: center;
        }
        .auto-style20 {
            font-size: large;
        }
        .auto-style21 {
            text-decoration: underline;
            font-size: large;
        }
        .auto-style22 {
            height: 99px;
        }
        .auto-style23 {
            height: 99px;
            text-align: center;
        }
    </style>
</head>
<body><center>

    <form id="form1" runat="server">
        
        <div class="auto-style12" id="header">
    
            <div class="auto-style12">
    
        <br />
            <strong><span class="auto-style11">SCHOOL MANAGEMENT SYSTEM</span>&nbsp;&nbsp;&nbsp;&nbsp;</strong>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp
         <asp:Button ID="btn" Text=" login" runat="server" OnClick="btn_Click" Height="33px" Width="71px" />
         <!--<asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl ="login.aspx">Login</asp:HyperLink>-->&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:HyperLink ID="HyperLink3" runat="server" NavigateUrl ="about.aspx">About</asp:HyperLink>&nbsp;&nbsp;<br />
                <br />
            </div></div><br /><hr /><br />
        <div id="pagename" class="auto-style12"><br />
                <span class="auto-style11">ADMIN&#39;S PAGE</span><br />
        &nbsp;&nbsp;<br /></div><br/>
            
            <hr />
            <div class="auto-style12">
            <br />
            <br />
&nbsp;</div>
        <div style="">
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">***<span class="auto-style11">&nbsp; <span class="auto-style20">SALARY MANAGEMENT&nbsp;</span> </span>***<br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style4"></td>
                    <td class="auto-style18">&nbsp;Employee ID&nbsp; :&nbsp;
                        <asp:TextBox ID="TextBox14" runat="server"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount&nbsp; :&nbsp;
                        <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <asp:Label ID="Label9" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Label ID="Label7" runat="server" Text="Label"></asp:Label>
                        &nbsp;<br />
                    </td>
                    <td class="auto-style4"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">
                        <div class="auto-style12">
                        <asp:Button ID="Button1" runat="server" Height="36px" OnClick="Button1_Click" Text="Pay" Width="64px" />
                        <br />
                        <br />
                        <br />
                        </div>
                        <hr />
                        <div class="auto-style12">
                        <br />
                        <br />
                        </div>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">***<span class="auto-style11">&nbsp; <span class="auto-style20">TO ENTER A NEW EMPLOYEE&nbsp;</span> </span>***<br />
                        <br />
                        <br />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style9"></td>
                    <td class="auto-style19">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; School ID&nbsp; :&nbsp;
                        <asp:TextBox ID="TextBox7" runat="server" Width="154px"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style9"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">Employee Name&nbsp; :&nbsp; <asp:TextBox ID="TextBox4" runat="server" Width="141px"></asp:TextBox>
                        <br />
                        <br />
                        Emloyee Degree :
                        <asp:DropDownList ID="DropDownList7" runat="server">
                            <asp:ListItem Value="B.Tech">B.Tech or B.E</asp:ListItem>
                            <asp:ListItem Value="M.Tech">M.Tech or M.E</asp:ListItem>
                            <asp:ListItem>PhD</asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Salary&nbsp; :&nbsp;
                        <asp:TextBox ID="TextBox5" runat="server"></asp:TextBox>
                        &nbsp;
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Experience(in years) :
                        <asp:TextBox ID="TextBox21" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator2" runat="server" ControlToValidate="TextBox21" ErrorMessage="enter numbers!!" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Age :
                        <asp:TextBox ID="TextBox22" runat="server"></asp:TextBox>
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator3" runat="server" ControlToValidate="TextBox22" ErrorMessage="enter numbers!!" ValidationExpression="[0-9]{1,}"></asp:RegularExpressionValidator>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style22"></td>
                    <td class="auto-style23">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp;&nbsp; Address&nbsp; :&nbsp;
                        <asp:TextBox ID="TextBox6" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        <asp:Label ID="Label10" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label2" runat="server" Text="New genetared Employee's ID is : " Visible="False"></asp:Label>
                        <asp:Label ID="Label6" runat="server" Text="XX" Visible="False"></asp:Label>
                        <br />
                    </td>
                    <td class="auto-style22"></td>
                </tr>
                <tr>
                    <td class="auto-style5"></td>
                    <td class="auto-style17">
                        <div class="auto-style12">
                        <asp:Button ID="Button2" runat="server" Height="33px" OnClick="Button2_Click" Text="Add" Width="67px" />
                        <br />
                        <br />
                        <br />
                        </div>
                        <hr />
                        <div class="auto-style12">
                        <br />
                        <br />
                        </div>
                    </td>
                    <td class="auto-style5"></td>
                </tr>
                <tr>
                    <td class="auto-style3"></td>
                    <td class="auto-style16">***<span class="auto-style11">&nbsp;<span class="auto-style20"> FEE MANAGEMENT</span>&nbsp; </span>***<br />
                        <br />
                    </td>
                    <td class="auto-style3"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">Class&nbsp; :&nbsp;
                    <asp:DropDownList ID="DropDownList2" runat="server" AutoPostBack="True" OnSelectedIndexChanged="DropDownList2_SelectedIndexChanged" Height="21px" Width="89px">
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
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student&#39;s ID :&nbsp;
                        <asp:DropDownList ID="DropDownList6" runat="server" Height="22px" Width="90px">
                        </asp:DropDownList>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Amount&nbsp; :&nbsp;
                        <asp:TextBox ID="TextBox9" runat="server" Width="99px"></asp:TextBox>
                        &nbsp;
                        <asp:Label ID="Label11" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style10"></td>
                    <td class="auto-style15">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Paid ?&nbsp;&nbsp :  &nbsp;&nbsp 
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<asp:DropDownList ID="DropDownList3" runat="server" Height="61px" Width="67px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                        </asp:DropDownList>
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                          
                        <br />
                          
                    </td>
                    <td class="auto-style10"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">
                        <div class="auto-style12">
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <br />
                        &nbsp;&nbsp;
                        <asp:Button ID="Button3" runat="server" Height="31px" OnClick="Button3_Click" Text="OK" Width="60px" />
                        <br />
                        <br />
                        <br />
                        <br />
                        </div>
                        <hr />
                        <div class="auto-style12">
                        <br />
                        <br />
                        <br />
                        </div>
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
            <div class="auto-style12">
            ***<span class="auto-style11">&nbsp; <span class="auto-style20">FOR A NEW STUDENT&nbsp;</span> </span>***<br />
            <br />
            </div>
            <table class="auto-style1">
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student&#39;s Name&nbsp; :&nbsp; <asp:TextBox ID="TextBox10" runat="server"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student&#39;s DOB :
                        <asp:TextBox ID="TextBox18" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student&#39;s Class&nbsp; :&nbsp;
                        <asp:DropDownList ID="DropDownList4" runat="server" Height="27px" Width="100px">
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
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style7"></td>
                    <td class="auto-style14">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;Student&#39;s Address&nbsp; :&nbsp; <asp:TextBox ID="TextBox12" runat="server"></asp:TextBox>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student&#39;s Contact no :
                        <asp:TextBox ID="TextBox20" runat="server"></asp:TextBox>
&nbsp;
                        <asp:RegularExpressionValidator ID="RegularExpressionValidator1" runat="server" ControlToValidate="TextBox20" ErrorMessage="Enter 10 digits" ValidationExpression="[0-9]{10}"></asp:RegularExpressionValidator>
                        <br />
                        <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Student&#39;s Blood gr. :
                        &nbsp;&nbsp;&nbsp;
                        <asp:DropDownList ID="DropDownList9" runat="server" Height="23px" Width="68px">
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
                    </td>
                    <td class="auto-style7"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; School&#39;s ID&nbsp; :&nbsp; <asp:TextBox ID="TextBox13" runat="server"></asp:TextBox>
                        <br />
                        <br />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style8"></td>
                    <td class="auto-style13">
                        <div class="auto-style12">
                            <asp:Label ID="Label12" runat="server" Text="Label"></asp:Label>
                        <br />
                        <asp:Label ID="Label4" runat="server" Text="New generated student's ID is : " Visible="False"></asp:Label>
                        <asp:Label ID="Label5" runat="server" Text="XX" Visible="False"></asp:Label>
                            <br />
                        <br />
                        <asp:Button ID="Button4" runat="server" Height="31px" OnClick="Button4_Click" Text="Add" Width="71px" />
                        <br />
                        <br />
                        </div>
                        <hr />
                        <div class="auto-style12">
                        <br />
                        <br />
                        </div>
                    </td>
                    <td class="auto-style8"></td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">***<span class="auto-style11">&nbsp; <span class="auto-style20">FOR EMPLOYEE&#39;S ATTENDANCE&nbsp;</span> </span>***<br />
                        <br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; Employee&#39;s ID&nbsp; :&nbsp;
                        <asp:TextBox ID="TextBox15" runat="server"></asp:TextBox>
                        <br />
                        <br />
                        Present or Not ?&nbsp; :&nbsp;
                        <asp:DropDownList ID="DropDownList5" runat="server" Height="31px" Width="67px">
                            <asp:ListItem>Yes</asp:ListItem>
                            <asp:ListItem>No</asp:ListItem>
                            <asp:ListItem></asp:ListItem>
                        </asp:DropDownList>
                        <br />
                        <br />
                        <asp:Label ID="Label8" runat="server" Text="Label"></asp:Label>
                        <br />
                        <br />
                        <asp:Button ID="Button5" runat="server" Height="34px" OnClick="Button5_Click" Text="Add" Width="64px" />
                    </td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12"><hr /></td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
                <tr>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                    <td class="auto-style12">&nbsp;</td>
                </tr>
            </table>
            <div class="auto-style12">
                *** <span class="auto-style21">NEW STUDENTS REQUESTS</span> ***<br />
                <br />
    
            </div>
    
    </div>
    <div>
    
        &nbsp;&nbsp;&nbsp;
    
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="name" DataSourceID="SqlDataSource1" CssClass="gview" AlternatingRowStyle-CssClass="alt" PagerStyle-CssClass="pgr" CellPadding="5" CellSpacing="10" HorizontalAlign="Center" Width="65%" >
<AlternatingRowStyle CssClass="alt"></AlternatingRowStyle>
            <Columns>
                <asp:BoundField DataField="name" HeaderText="name" ReadOnly="True" SortExpression="name" />
                <asp:BoundField DataField="con" HeaderText="con" SortExpression="con" />
                <asp:BoundField DataField="addre" HeaderText="addre" SortExpression="addre" />
                <asp:BoundField DataField="emailadd" HeaderText="emailadd" SortExpression="emailadd" />
                <asp:BoundField DataField="cla" HeaderText="cla" SortExpression="cla" />
                <asp:BoundField DataField="dob" HeaderText="dob" SortExpression="dob" />
                <asp:BoundField DataField="blood_gr" HeaderText="blood-group" SortExpression="blood_gr" />
            </Columns>

<PagerStyle CssClass="pgr"></PagerStyle>
        </asp:GridView>
    
        <br />
        <br />
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [ragistration]"></asp:SqlDataSource>
        <br />
        <hr />
        <br />
        <center>
        <table class="auto-style1">
            <tr>
                <td>&nbsp;</td>
                <td>*** <span class="auto-style21">TO REMOVE EMPLOYEE</span> ***</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Employee ID :
                    <asp:TextBox ID="TextBox16" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    <asp:Label ID="Label13" runat="server" Text="Label"></asp:Label>
&nbsp;
                    <asp:Label ID="Label15" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button6" runat="server" Height="35px" OnClick="Button6_Click" Text="Leave" Width="74px" />
                    <br />
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td><hr /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>*** <span class="auto-style21">TO REMOVE STUDENT</span> ***</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>Student ID :
                    <asp:TextBox ID="TextBox17" runat="server"></asp:TextBox>
                    <br />
                    <br />
                    Behaviour :
                    <asp:DropDownList ID="DropDownList8" runat="server">
                        <asp:ListItem>Good</asp:ListItem>
                        <asp:ListItem>Moderate</asp:ListItem>
                        <asp:ListItem>Bad</asp:ListItem>
                    </asp:DropDownList>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <br />
                    <asp:Label ID="Label14" runat="server" Text="Label"></asp:Label>
&nbsp;
                    <asp:Label ID="Label16" runat="server" Text="Label"></asp:Label>
                </td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td>&nbsp;</td>
                <td>
                    <asp:Button ID="Button7" runat="server" Height="34px" OnClick="Button7_Click" Text="Leave" Width="82px" />
                </td>
                <td>&nbsp;</td>
            </tr>
        </table>
            </center>
    </div>
    
    </form></center>
</body>
</html>
