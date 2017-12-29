using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school_management
{
    public partial class login1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            btn.Visible = false;

            if (Session["role"] == null)
            {
                
            }
            else
            {
                String temp = Session["role"].ToString();
                if(temp.Equals("Student"))
                {
                    Response.Redirect("student.aspx");
                }
                else if(temp.Equals("Employee"))
                {
                    Response.Redirect("employee.aspx");
                }
                else if(temp.Equals("Admin"))
                {
                    Response.Redirect("admin.aspx");
                }
               
            }
            Label1.Visible = false;
            Label2.Visible = false;

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string id = TextBox1.Text.Trim();
            string pwd = TextBox2.Text.Trim();

            schooldbEntities1 db = new schooldbEntities1();
            var l = from ll in db.logins select ll;

            int ok = 0, okk = 0 ;
            
            foreach (var x in l)
            {
                // Response.Write(x.id + " " + x.pwd);
                if (x.id.Trim() == id && x.pwd.Trim() == pwd)
                {
                    ok = 1;
                    if (x.sta.Trim() == "0")
                    {
                        okk = 1;
                        if (x.role.Trim() == "e")
                        {
                            Label2.Text = "Employee ID Deactivated.";
                            Label2.Visible = true;
                        }
                        if(x.role.Trim() == "s")
                        {
                            Label2.Text = "Student ID Deactivated.";
                            Label2.Visible = true;
                        }
                    }
                    if (okk == 0)
                    {
                        if (x.role.Trim() == "e")
                        {
                            Session["role"] = "Employee";
                            Session["id"] = id;
                            Response.Redirect("employee.aspx");
                        }
                        else if (x.role.Trim() == "a")
                        {
                            Session["role"] = "Admin";
                            Session["id"] = id;
                            Response.Redirect("admin.aspx");
                        }
                        else if (x.role.Trim() == "s")
                        {
                            Session["role"] = "Student";
                            Session["id"] = id;
                            Response.Redirect("student.aspx");
                        }
                    }
                }
            }
            if (ok == 0)
            {
                Label1.Text = "SORRY, CREDENTIALS DON'T MATCHED.";
                Label1.Visible = true;
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}