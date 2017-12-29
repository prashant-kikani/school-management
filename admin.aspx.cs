using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using iTextSharp.text.html.simpleparser;
using iTextSharp.text.xml;

namespace school_management
{
    public partial class admin1 : System.Web.UI.Page
    {
        string am;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                if (Session["Role"].ToString().Equals("Admin"))
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

            // Label1.Visible = false;
            Label2.Visible = false;
            // Label3.Visible = false;
            Label5.Visible = false;
            Label4.Visible = false;
            Label6.Visible = false;
            Label7.Visible = false;
            Label8.Visible = false;
            Label9.Visible = false;
            Label10.Visible = false;
            Label11.Visible = false;
            Label12.Visible = false;
            Label13.Visible = false;
            Label14.Visible = false;
            Label15.Visible = false;
            Label16.Visible = false;
            
            
            if (am != null)
            {
                TextBox9.Text = am;
            }

            using (var db = new schooldbEntities1())
            {
                var l = from v in db.employees select v;
                ArrayList a = new ArrayList();
                // DropDownList6.DataSource
                var cl = DropDownList2.SelectedItem.Value;
                foreach (var x in l)
                {
                    a.Add(x.emp_id.Trim());
                }
                // DropDownList7.DataSource = a;
                // DropDownList8.DataSource = a;
                // DropDownList7.DataBind();
                // DropDownList8.DataBind();

                /*var r = from c in db.registrations select c;
                GridView1.DataSource = r;
                GridView1.DataBind();*/
                GridView1.Visible = true;
                GridView1.HorizontalAlign = HorizontalAlign.Center;
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox14.Text == null || TextBox2.Text == null)
            {
                Label9.Text = "Enter properly";
                Label9.Visible = true;
            }
            using (var db = new schooldbEntities1())
            {
                int ok = 0;
                // string id = DropDownList8.SelectedItem.Value.Trim();
                string id = TextBox14.Text.Trim();
               var l = from x in db.salaries select x;
                foreach (var x in l.ToList())
                {
                    if (x.emp_id.Trim() == id)
                    {
                        ok = 1;
                        x.is_paid = 1;
                        int gh = 0;
                        try { gh = Int32.Parse(TextBox2.Text); }catch(Exception ee)
                        {
                            Label9.Text = "Enter properly";
                            Label9.Visible = true;
                        }
                        x.amount = gh;
                        db.SaveChanges();
                        
                    }
                }
                if(ok == 0)
                {
                    Label7.Text = "No such Employee";
                    Label7.Visible = true;
                }
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            //REMAIN..............
            int ok = 0;
            if(TextBox4.Text == "" || TextBox5.Text == "" || TextBox6.Text == "" || TextBox7.Text == "" || TextBox21.Text == "" || TextBox22.Text == "")
            {
                Label10.Text = "Enter Properly";
                Label10.Visible = true;
                ok = 1;
                Button2.Focus();
            }

            if (ok == 0)
            {
                using (var db = new schooldbEntities1())
                {
                    /*
                    int ok = 0;
                    var l = from xx in db.employees select xx;
                    */
                    var sal = db.Set<salary>();
                    var sts = from v in db.status select v;
                    int total_emp = 0;
                    foreach (var x in sts.ToList())
                    {
                        // var zz = db.Set<status>();
                        var l = from bb in db.status select bb;
                        total_emp = x.total_emp;
                        total_emp++;
                        foreach (var cc in l.ToList())
                        {
                            cc.total_emp = total_emp;
                            break;
                        }
                        break;
                    }
                    string id = "e" + total_emp.ToString();
                    var z = db.Set<employee>();
                    var b = db.Set<login>();
                    /*
                    foreach (var x in l.ToList())
                    {
                        if (x.emp_id.Trim() == id)
                        {
                            ok = 1;
                        }
                    }
                    if (ok == 1)
                    {
                        Label2.Visible = true;
                    }
                    else
                    {
                    */
                    b.Add(new login { id = id, pwd = id, role = "e", sta = "1"});
                    db.SaveChanges();
                    int expe = Int32.Parse(TextBox21.Text.Trim());
                    int age = Int32.Parse(TextBox22.Text.Trim());
                    string deg = DropDownList7.SelectedItem.Value;
                    try
                    {
                        int fg = Int32.Parse(TextBox5.Text.Trim());

                        z.Add(new employee { emp_id = id, school_id = TextBox7.Text.Trim(), emp_name = TextBox4.Text.Trim(), emp_salary = Int32.Parse(TextBox5.Text.Trim()), emp_address = TextBox6.Text.Trim(), emp_age = age, emp_deg = deg, emp_exp = expe });
                        db.SaveChanges();
                        sal.Add(new salary { emp_id = id, amount = Int32.Parse(TextBox5.Text.Trim()) });
                        db.SaveChanges();
                        Label6.Text = id;
                        Label6.Visible = true;
                        Label2.Visible = true;
                        Button2.Focus();
                    }
                    catch (Exception ee)
                    {
                        Label10.Text = "Enter Properly";
                        Label10.Visible = true;
                        Button2.Focus();
                    }
                }
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            using (var db = new schooldbEntities1())
            {

                try
                {
                    int ok = 0;
                var l = from v in db.fees select v;
                var cl = DropDownList2.SelectedItem.Value;
                var id = DropDownList6.SelectedItem.Text.Trim();
                int fh = 0;
                // var id = TextBox8.Text.Trim();
                
                    fh = Int32.Parse(TextBox9.Text.Trim());
                
                    foreach (var x in l.ToList())
                    {
                        if (x.stu_id.Trim() == id && x.class_id.Trim() == cl)
                        {
                            ok = 1;
                            if (DropDownList3.SelectedItem.Value.Trim() == "Yes")
                            {
                                x.amount = fh;
                                x.is_paid = 1;
                            }
                            else if (DropDownList3.SelectedItem.Value.Trim() == "No")
                            {
                                x.amount = fh;
                                x.is_paid = 0;
                            }
                            db.SaveChanges();
                            break;
                        }
                    }
                }
                catch (Exception ee)
                {
                    Label11.Text = "Enter properly";
                    Label11.Visible = true;
                    Button3.Focus();
                }

            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            int ok = 0;
            if(TextBox10.Text == "" || TextBox12.Text == "" || TextBox13.Text == "")
            {
                Label12.Text = "Enter propely";
                Label12.Visible = true;
                Button4.Focus();
                ok = 1;
            }

            if (ok == 0)
            {
                //try
                //{
                    string name = TextBox10.Text.Trim();
                    string c = DropDownList4.SelectedItem.Value;
                    string add = TextBox12.Text.Trim();
                    string sid = TextBox13.Text.Trim();
                    string dob = TextBox18.Text.Trim();
                string conn = TextBox20.Text.Trim();
                    string bol = DropDownList9.SelectedItem.Value;
                    int con = 0;
                   
                    
                    int total_stu = 0;
                    using (var db = new schooldbEntities1())
                    {
                        var xx = db.Set<mark>();
                        var xxx = db.Set<stu_attendance>();
                        var fe = db.Set<fee>();
                        var bbb = db.Set<login>();
                        var sts = from v in db.status select v;
                        var l = from b in db.status select b;
                        foreach (var x in sts.ToList())
                        {
                            // var z = db.Set<status>();
                            total_stu = x.total_stu;
                            total_stu++;
                            foreach (var cc in l.ToList())
                            {
                                cc.total_stu = total_stu;
                                db.SaveChanges();
                                break;
                            }
                            break;
                        }
                        string id = "s" + total_stu.ToString();
                        var stu = db.Set<student>();
                        bbb.Add(new login { id = id, pwd = id, role = "s", sta = "1" });
                        db.SaveChanges();
                        stu.Add(new student { stu_id = id, school_id = sid, stu_name = name, stu_class = c, stu_address = add, stu_dob = dob, stu_beh = "good", stu_con = conn,  stu_blo_gr = bol });
                        db.SaveChanges();
                        fe.Add(new fee { stu_id = id, class_id = c });
                        xx.Add(new mark { stu_id = id, class_id = c });
                        db.SaveChanges();
                        var g = from f in db.ragistrations select f;
                        foreach (var j in g)
                        {
                            if (j.name.Trim() == name.Trim())
                            {
                                db.ragistrations.Remove(j);
                                break;
                            }
                        }
                        db.SaveChanges();
                    /*var gg = from f in db.ragistrations select f;
                    GridView1.DataSourceID = null;
                    
                    GridView1.DataSource = gg;
                    GridView1.DataBind();*/
                    Label5.Text = id;
                        Label5.Visible = true;
                        Label4.Visible = true;
                    Button4.Focus();
                    }
               /* }
                catch (Exception ee)
                {
                    Label12.Text = ee.Message;
                    Label12.Visible = true;
                    Button4.Focus();
                }*/
            }

        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            // string id = DropDownList7.SelectedItem.Value.Trim();
            string id = TextBox15.Text.Trim();
            string p = DropDownList5.SelectedItem.Value;
            using (var db = new schooldbEntities1())
            {
                var x = db.Set<fac_attendence>();
                int ok = 0;
                var l = from b in db.employees select b;
                foreach (var f in l.ToList())
                {
                    if (f.emp_id.Trim() == id && f.emp_sta == "1")
                    {
                        ok = 1;
                        if (DropDownList5.SelectedItem.Value.Trim() == "Yes")
                        {
                            x.Add(new fac_attendence { emp_id = id, date = DateTime.Now, is_present = 1 });
                        }
                        else if (DropDownList5.SelectedItem.Value.Trim() == "No")
                        {
                            x.Add(new fac_attendence { emp_id = id, date = DateTime.Now, is_present = 0 });
                        }
                        db.SaveChanges();
                        break;
                    }
                }
                if (ok == 0)
                {
                    Label8.Text = "No such Employee";
                    Label8.Visible = true;
                    Button5.Focus();
                }
            }
        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void DropDownList2_SelectedIndexChanged(object sender, EventArgs e)
        {
            // 6
            using (var db = new schooldbEntities1())
            {
                var l = from v in db.fees select v;
                ArrayList a = new ArrayList();
                // DropDownList6.DataSource
                var cl = DropDownList2.SelectedItem.Value;
                foreach (var x in l)
                {
                    if(x.class_id.Trim() == cl)
                    {
                        a.Add(x.stu_id);
                    }
                    // a.Add(x.stu_id);
                }
                a.Sort();
                DropDownList6.DataSource = a;
                DropDownList6.DataBind();
            }
        }

        protected void Button6_Click(object sender, EventArgs e)
        {
            int ok = 0, okk = 0;
            if (TextBox16.Text == "")
            {
                Label13.Text = "Enter Properly";
                Label13.Visible = true;
                ok = 1;
                Button6.Focus();
            }
            if(ok == 0)
            {
                string id = TextBox16.Text.Trim();
                using (var db = new schooldbEntities1())
                {
                    var l = from v in db.logins select v;
                    var d = from vv in db.employees select vv;
                    var g = from f in db.salaries select f;
                    var h = from j in db.fac_attendence select j;
                    foreach(var q in h)
                    {
                        if(q.emp_id.Trim() == id)
                        {
                            fac_attendence hg = (from j in db.fac_attendence where j.emp_id.Trim() == id select j).Single();
                            db.fac_attendence.Remove(hg);
                            break;
                        }
                    }
                    
                    foreach (var gg in g)
                    {
                        if(gg.emp_id.Trim() == id)
                        {
                            salary ss = (from hh in db.salaries where hh.emp_id.Trim() == id select hh).Single();
                            db.salaries.Remove(ss);
                            break;
                        }
                    }
                    foreach(var x in d)
                    {
                        if(x.emp_id.Trim() == id)
                        {
                            x.emp_sta = "0";
                            break;
                        }
                    }
                    foreach(var x in l)
                    {
                        if(x.id.Trim() == id)
                        {
                            okk = 1;
                            x.sta = "0";
                            break;
                        }
                    }
                    Label15.Text = "Removed!!";
                    Label15.Visible = true;
                    Button6.Focus();
                    db.SaveChanges();
                }
                if(okk == 0)
                {
                    Label15.Text = "NO such Employee!!";
                    Label15.Visible = true;
                    Button6.Focus();
                }
            }
            
            
        }

        protected void Button7_Click(object sender, EventArgs e)
        {
            int ok = 0, okk = 0;
            if (TextBox17.Text == "")
            {
                Label14.Text = "Enter Properly";
                Label14.Visible = true;
                ok = 1;
                Button7.Focus();
            }
            if (ok == 0)
            {
                string id = TextBox17.Text.Trim();
                string beh = DropDownList8.SelectedItem.Value;

                using (var db = new schooldbEntities1())
                {
                    var l = from v in db.logins select v;
                    var ll = from vv in db.students select vv;
                    foreach (var x in ll)
                    {
                        if (x.stu_id.Trim() == id)
                        {
                            x.stu_beh = beh;
                            break;
                        }
                    }
                    foreach (var x in l)
                    {
                        if (x.id.Trim() == id)
                        {
                            okk = 1;
                            x.sta = "0";
                            break;
                        }
                    }
                    var g = from gg in db.fees where gg.stu_id.Trim() == id select gg;
                    foreach(var k in g)
                    {
                        if(k.stu_id.Trim() == id)
                        {
                            fee xxx = (from q in db.fees where q.stu_id == id select q).Single();
                            db.fees.Remove(xxx);
                        }
                    }
                    
                    var f = (from d in db.students where d.stu_id.Trim() == id select d).Single();
                    //foreach(var t in f)
                    //{
                   
                    f.stu_sta = "0";
                    //}
                    Label16.Text = "Removed!!";
                    Label16.Visible = true;
                    Button7.Focus();
                    db.SaveChanges();
                }
                if (okk == 0)
                {
                    Label16.Text = "NO such Student!!";
                    Label16.Visible = true;
                    Button7.Focus();
                }
                else
                {


                    Phrase phrase = null;
                    PdfPCell cell = null;
                    PdfPTable table = null;
                    BaseColor color = null;
                    Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);

                    Response.ContentType = "application/pdf";
                    Response.AddHeader("content-disposition", "attachment;filename=LC.pdf");
                    Response.Cache.SetCacheability(HttpCacheability.NoCache);

                    table = new PdfPTable(2);
                    table.HorizontalAlignment = Element.ALIGN_LEFT;
                    table.SetWidths(new float[] { 0.3f, 1f });
                    table.SpacingBefore = 20f;

                    //HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
                    PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
                    pdfDoc.Open();
                    cell = PhraseCell(new Phrase("School Leaving Certificate\n\n\n", FontFactory.GetFont("Arial", 20, Font.UNDERLINE, new BaseColor(0, 0, 0))), PdfPCell.ALIGN_CENTER);
                    cell.Colspan = 2;
                    table.AddCell(cell);
                    string ss;
                    // string n = "";
                    string nam = "", dob = "", be = "", bg = "", cl = "", ad = "", co = "", iddd = "";
                    id = TextBox17.Text.Trim();
                    using (var db = new schooldbEntities1())
                    {
                        var c = (from b in db.students where b.stu_id.Trim() == id select b).Single();
                        nam = c.stu_name;                        
                        dob = c.stu_dob;
                        be = c.stu_beh;
                        bg = c.stu_blo_gr;
                        cl = c.stu_class;
                        ad = c.stu_address;
                        co = c.stu_con.ToString();
                        iddd = c.stu_id.ToString();
                    }

                    ss = "This is to here by that student " + nam.Trim() + " is quelified from ALPHA HIGH SCHOOL.\n\n Details are as below : \n";

                    cell = PhraseCell(new Phrase(ss), PdfPCell.ALIGN_CENTER);
                    cell.Colspan = 2;
                    cell.PaddingBottom = 30f;
                    table.AddCell(cell);
                    ss = "ID : " + iddd + "\n\n";
                    ss += "Name : " + nam + "\n\n";
                    ss += "Class : " + cl + "\n\n";
                    ss += "Address : " + ad + "\n\n";
                    ss += "Date of Birth : " + dob + "\n\n";
                    ss += "Behaviour : " + be + "\n\n";
                    ss += "Contact No. : " + co + "\n\n";
                    ss += "Blood Group : " + bg + "\n\n\n\n\n\n\n";
                    cell = PhraseCell(new Phrase(ss), PdfPCell.ALIGN_CENTER);
                    cell.Colspan = 2;
                    cell.PaddingBottom = 30f;
                    table.AddCell(cell);
                    ss = "Principal Sign";
                    cell = PhraseCell(new Phrase(ss), PdfPCell.ALIGN_RIGHT);
                    cell.Colspan = 2;
                    cell.PaddingBottom = 30f;
                    table.AddCell(cell);
                    pdfDoc.Add(table);
                    pdfDoc.Close();
                    Response.Write(pdfDoc);
                    Response.End();

                }

            }
        }

        private static PdfPCell PhraseCell(Phrase phrase, int align)
        {
            PdfPCell cell = new PdfPCell(phrase);
            cell.BorderColor = new BaseColor(255, 255, 255);
            cell.VerticalAlignment = PdfPCell.ALIGN_TOP;
            cell.HorizontalAlignment = align;
            cell.PaddingBottom = 2f;
            cell.PaddingTop = 0f;
            return cell;
        }

        private static PdfPCell ImageCell(string path, float scale, int align)
        {
            iTextSharp.text.Image image = iTextSharp.text.Image.GetInstance(HttpContext.Current.Server.MapPath(path));
            image.ScalePercent(scale);
            PdfPCell cell = new PdfPCell(image);
            cell.BorderColor = new BaseColor(255, 255, 255);
            cell.VerticalAlignment = PdfPCell.ALIGN_TOP;
            cell.HorizontalAlignment = align;
            cell.PaddingBottom = 0f;
            cell.PaddingTop = 0f;
            return cell;
        }
    }
}