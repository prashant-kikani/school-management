using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school_management
{
    public partial class register : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
                Response.Redirect("login.aspx");
            else
            {

            }
            
           if(!IsPostBack) {
                ArrayList da = new ArrayList();
                for (int i = 1; i <= 31; i++)
                {
                    da.Add(i);
                }
                ArrayList mo = new ArrayList();
                for (int i = 1; i <= 12; i++)
                {
                    mo.Add(i);
                }
                ArrayList yy = new ArrayList();
                for (int i = 1990; i <= 2017; i++)
                {
                    yy.Add(i);
                }
                DropDownList3.DataSource = da;
                DropDownList4.DataSource = mo;
                DropDownList5.DataSource = yy;
                DropDownList3.DataBind();
                DropDownList4.DataBind();
                DropDownList5.DataBind();
            }
            
            
            Label1.Visible = false;
            Label2.Visible = false;
            Label3.Visible = false;
           
            Label5.Visible = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int ok = 0;
            if (TextBox2.Text == "" || TextBox3.Text == "" || TextBox4.Text == "" || TextBox5.Text == "")
            {
                Label3.Text = "Enter properly";
                Label3.Visible = true;
                ok = 1;
            }
            string blo = DropDownList6.SelectedItem.Value;
           
            if (ok == 0)
            {
                using (var db = new schooldbEntities1())
                {

                    string name = TextBox3.Text.Trim();
                    string no = TextBox2.Text.Trim();
                    string da = DropDownList3.SelectedItem.Value + "/" + DropDownList4.SelectedItem.Value + "/" + DropDownList5.SelectedItem.Value;
                    string addre = TextBox4.Text.Trim();
                    string mail = TextBox5.Text.Trim();
                    string bl = DropDownList6.SelectedItem.Value;
                    
                    string c = DropDownList2.SelectedItem.Value;
                    var reg = db.Set<ragistration>();

                    if (no.Length != 10)
                    {
                        Label1.Text = "Enter proper no.";
                        Label1.Visible = true;
                        // Response.Redirect("register.aspx");
                    }
                    else if (!mail.Contains("@gmail.com") && !mail.Contains("@yahoo.com"))
                    {
                        Label2.Text = "Enter proper mail id.";
                        Label2.Visible = true;
                    }
                    else
                    {
                        reg.Add(new ragistration
                        {
                            name = name,
                            addre = addre,
                            cla = c,
                            con = no,
                            emailadd = mail,
                            dob = da,
                            blood_gr = bl
                        });
                        db.SaveChanges();
                        Label5.Text = "Successfully Ragistered!!";
                        Label5.Visible = true;
                    }
                }
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Response.Redirect("login.aspx");
        }
    }
}