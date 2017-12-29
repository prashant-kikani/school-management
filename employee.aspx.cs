using System;
using System.Collections.Generic;
using System.Linq;
using System.Collections;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school_management
{
    public partial class faculty : System.Web.UI.Page
    {
        string o, c, s;
        protected void Page_Load(object sender, EventArgs e)
        {

            Label17.Visible = false;
            if (Session["role"] != null)
            {
                if (Session["Role"].ToString().Equals("Employee"))
                {
                    btn.Text = "Logout";
                }
                else
                {
                    Response.Redirect("login.aspx");
                }
            }
            else
            {
                Response.Redirect("login.aspx");
            }
            string id = Session["id"].ToString().Trim();
            using (var db = new schooldbEntities1())
            {
                
                var l = from c in db.salaries select c;
                foreach (var x in l)
                {
                    if (x.emp_id.Trim() == id)
                    {
                        if (x.is_paid == 1)
                        {
                            Label14.Text = "Paid";
                        }
                        else
                        {
                            Label14.Text = "Not Paid";
                        }
                    }
                }
                var xx = from v in db.employees select v;
                foreach(var g in xx)
                {
                    if(g.emp_id.Trim() == id)
                    {
                        Label15.Text = g.emp_name;
                        break;
                    }
                }
            }
            GridView1.HorizontalAlign = HorizontalAlign.Center;
            // Label11.Visible = false;
            Label16.Visible = false;
            Label13.Visible = false;
            /*using (var db = new schooldbEntities1())
            {

                var x = db.Set<time_table>();
                for (int i = 1; i <= 5; i++)
                {
                    
                    for(int j = 1; j <= 10; j++)
                    {
                        x.Add(new time_table { sub_id = "sub" + i.ToString(), class_id = "c" + j.ToString(), period_id = "period" + ((j % 2) + 1).ToString() });
                        db.SaveChanges();
                    }
                }
                

            }*/
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            c = DropDownList2.SelectedItem.Value;
            s = DropDownList1.SelectedItem.Value;
            o = TextBox5.Text.Trim();
            
            Label9.Text = o;
            using (var db = new schooldbEntities1())
            {
                // var x = db.Set<myclass>();
                var l = from ll in db.myclasses select ll;
                foreach (var xx in l)
                {
                    if(xx.class_id.Trim() == c)
                    {
                        //Label7.Text = xx.total_stu.ToString();
                        break;
                    }
                }
                
            }
        }

        protected void TextBox5_TextChanged(object sender, EventArgs e) //Out of
        {
            Label9.Text = TextBox5.Text;
        }

        protected void TextBox7_TextChanged(object sender, EventArgs e) //ID
        {

        }

        protected void Button4_Click1(object sender, EventArgs e)
        {

            try { 
                string selec = Request.Form["mycheck"].ToString();
                string[] ids = selec.Split(',');
                int i = 0;
                foreach(string sd in ids)
                {
                    ids[i] = sd.Trim();
                    i++;
                }
            int att = 0;
            string c = DropDownList3.SelectedItem.Value;
                using (var db = new schooldbEntities1())
                {
                    var z = db.Set<stu_attendance>();
                    var nots = from n in db.students where n.stu_class == c select n;
                    string[] nott = new string[100];
                    int ii = 0;
                    foreach (var cc in nots)
                    {
                        string idd = cc.stu_id.Trim();
                        int okok = 0;
                        foreach (string ss in ids)
                        {
                            if (idd == ss)
                            {
                                okok = 1;
                                break;
                            }
                        }
                        if (okok == 0)
                        {
                            nott[ii] = idd;
                            ii++;
                        }
                    }
                
                var loc = from v in db.atteloes select v;
                foreach(var f in loc)
                {
                    att = f.tot;
                    break;
                }
                att = att + 1;
                    for(int d = 0; d < ii; d++)
                    {
                        string idd = nott[d];
                    att = att + 1;
                    z.Add(new stu_attendance { stu_id = idd, date = DateTime.Now, is_present = 0, pk = att });
                    }
                
                    foreach (string t in ids)
                    {
                        string id = t;
                    att = att + 1;
                    z.Add(new stu_attendance { stu_id = id, date = DateTime.Now, is_present = 1, pk = att + 1 });
                    }
                var locv = from v in db.atteloes select v;
                
                foreach (var f in locv)
                {
                    f.tot = att + 1000;
                }
                db.SaveChanges();
                try { db.SaveChanges(); }
                catch(Exception ee)
                {
                    Label17.Text = "Done";
                    Label17.Visible = true;
                }
                   
                }
                // Session["select"] = selec;
                // Response.Write(selec);
            }
            catch (Exception ee)
            {
                Label16.Visible = true;
                Button4.Focus();
            }
        }

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try { 
            string m = TextBox2.Text.Trim();
            string o = TextBox5.Text.Trim();
            int okk = 0;
            if (Int32.Parse(o) < Int32.Parse(m))
            {
                Label13.Visible = true;
                // Response.Redirect("employee.aspx");
            } else
            {
                okk = 1;
            }
            // Response.Write("m = " + m);
            string id = DropDownList5.SelectedItem.Text;
            using (var db = new schooldbEntities1())
            {

                // var x = db.Set<student>();
                var xx = db.Set<mark>();   // PROBLEM.............................
                var l = from ll in db.students select ll;
                int ok = 0;
                c = DropDownList2.SelectedItem.Value;
                s = DropDownList1.SelectedItem.Value;
                foreach (var z in l.ToList())
                {
                    // Response.Write(z.stu_id + " " + z.stu_class);
                    if (z.stu_class.Trim() == c.Trim() && z.stu_id.Trim() == id.Trim() && okk == 1)
                    {
                        // Response.Write("INSIDE.........");
                        ok = 1;
                        id = id.Trim();
                        c = c.Trim();
                        var v = from vv in db.marks select vv;
                        if (s == "sub1")
                        {
                            // Response.Write("m = " + m);
                           
                            foreach(var d in v.ToList())
                            {
                                if(d.stu_id.Trim() == id && d.class_id.Trim() == c)
                                {
                                    d.sub1 = Int32.Parse(m);
                                    db.SaveChanges();
                                    break;
                                }
                            }
                            
                        } else if(s == "sub2")
                        {
                            foreach (var d in v.ToList())
                            {
                                if (d.stu_id.Trim() == id && d.class_id.Trim() == c)
                                {
                                    d.sub2 = Int32.Parse(m);
                                    db.SaveChanges();
                                    break;
                                }
                            }
                        } else if(s == "sub3")
                        {
                            foreach (var d in v.ToList())
                            {
                                if (d.stu_id.Trim() == id && d.class_id.Trim() == c)
                                {
                                    d.sub3 = Int32.Parse(m);
                                    db.SaveChanges();
                                    break;
                                }
                            }
                        } else if(s == "sub4")
                        {
                            foreach (var d in v.ToList())
                            {
                                if (d.stu_id.Trim() == id && d.class_id.Trim() == c)
                                {
                                    d.sub4 = Int32.Parse(m);
                                    db.SaveChanges();
                                    break;
                                }
                            }
                        } else if(s == "sub5")
                        {
                            foreach (var d in v.ToList())
                            {
                                if (d.stu_id.Trim() == id && d.class_id.Trim() == c)
                                {
                                    d.sub5 = Int32.Parse(m);
                                    db.SaveChanges();
                                    break;
                                }
                            }
                        }
                    }
                }
                // db.SaveChanges();
                if(ok == 0 && okk == 1)
                {
                    // Label11.Visible = true;
                }
                
            }
            }
            catch (Exception ee)
            {
                Label13.Visible = true;
            }
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var db = new schooldbEntities1())
            {
                var l = from v in db.students select v;
                ArrayList a = new ArrayList();
                // DropDownList6.DataSource
                var cl = DropDownList2.SelectedItem.Value;
                foreach (var x in l)
                {
                    if (x.stu_class.Trim() == cl)
                    {
                        a.Add(x.stu_id);
                    }
                    // a.Add(x.stu_id);
                }
                DropDownList5.DataSource = a;
                DropDownList5.DataBind();
            }
        }

        protected void DropDownList3_SelectedIndexChanged(object sender, EventArgs e)
        {
            using (var db = new schooldbEntities1())
            {
                // ArrayList lii = new ArrayList();
                var cl = DropDownList3.SelectedItem.Value;
                /*var l = from v in db.students select v;
                ArrayList a = new ArrayList();
                // DropDownList6.DataSource
                var cl = DropDownList3.SelectedItem.Value;
                foreach (var x in l)
                {
                    if (x.stu_class.Trim() == cl)
                    {
                        a.Add(x.stu_id);
                    }
                    // a.Add(x.stu_id);
                }
                DropDownList6.DataSource = a;
                DropDownList6.DataBind();*/
                var l = from v in db.students where v.stu_class == cl && v.stu_sta.Trim() == "1" select v;
                /*foreach(var b in l)
                {
                    // lii.Add(b.stu_id);
                    // Response.Write(b.stu_id);
                }*/
                GridView1.DataSource = l.ToList();
                GridView1.DataBind();
                Button4.Focus();
            }
        }

        protected void btn_Click1(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

       
        protected void Button4_Click(object sender, EventArgs e)
        {
            
        }
    }
}