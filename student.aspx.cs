using System;
using System.Collections.Generic;
using System.Collections;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;

namespace school_management
{
    public partial class student1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["role"] != null)
            {
                if (Session["Role"].ToString().Equals("Student"))
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

                var l = from vc in db.marks select vc;
                var ll = from c in db.students select c;
                foreach(var ss in ll)
                {
                    if(ss.stu_id.Trim() == id)
                    {
                        Label1.Text = ss.stu_name;
                        break;
                    }
                }
                foreach(var s in l.ToList())
                {
                    if(s.stu_id.Trim() == id)
                    {
                        
                        Label2.Text = s.sub1.ToString();
                        Label3.Text = s.sub2.ToString();
                        Label4.Text = s.sub3.ToString();
                        Label5.Text = s.sub4.ToString();
                        Label6.Text = s.sub5.ToString();

                        break;
                    }
                }
                var z = from x in db.stu_attendance select x;
                ArrayList li = new ArrayList();
                foreach(var c in z)
                {
                    if(c.stu_id.Trim() == id)
                    {
                        string s = c.date.Day.ToString() + "/" + c.date.Month.ToString() + "/" + c.date.Year.ToString() + "---------";
                        // li.Add(c.date.Date + "/" + c.date.Month + "/" + c.date.Year + "  ->  ");
                        if(c.is_present == 0)
                        {
                            s += "Not Present";
                            // li.Add("Not Present");
                        } else
                        {
                            s += "Present";
                            //li.Add("Present");
                        }
                        li.Add(s + "\n");
                    }
                }
                GridView1.DataSource = li;
                GridView1.DataBind();
                GridView1.Visible = true;
                GridView1.HorizontalAlign = HorizontalAlign.Center;

                var v = from b in db.fees select b;
                foreach(var f in v)
                {
                    if(f.stu_id.Trim() == id)
                    {
                        if (f.is_paid == 1)
                        {
                            Label7.Text = "Paid. Best Luck for studies...";
                        }
                        else
                        {
                            Label7.Text = "Not Paid. So, better you pay the fees first.";
                        }
                        break;
                    }
                    
                }
            }


        }

        protected void btn_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Phrase phrase = null;
            PdfPCell cell = null;
            PdfPTable table = null;
            BaseColor color = null;
            Document pdfDoc = new Document(PageSize.A4, 10f, 10f, 10f, 10f);

            Response.ContentType = "application/pdf";
            Response.AddHeader("content-disposition", "attachment;filename=Result.pdf");
            Response.Cache.SetCacheability(HttpCacheability.NoCache);

            table = new PdfPTable(2);
            table.HorizontalAlignment = Element.ALIGN_LEFT;
            table.SetWidths(new float[] { 0.3f, 1f });
            table.SpacingBefore = 20f;

            //HTMLWorker htmlparser = new HTMLWorker(pdfDoc);
            PdfWriter writer = PdfWriter.GetInstance(pdfDoc, Response.OutputStream);
            pdfDoc.Open();
            cell = PhraseCell(new Phrase("RESULT\n\n", FontFactory.GetFont("Arial", 20, Font.UNDERLINE, new BaseColor(0, 0, 0))), PdfPCell.ALIGN_CENTER);
            cell.Colspan = 2;
            table.AddCell(cell);
            string ss;
            // string n = "";
            string s1 = "", s2 = "", s3= "", s4 = "", s5 = "", cl = "";
            string id = Session["id"].ToString().Trim();
            using (var db = new schooldbEntities1())
            {
                var c = (from b in db.marks where b.stu_id.Trim() == id select b).Single();
                s1 = c.sub1.ToString();
                s2 = c.sub2.ToString();
                s3 = c.sub3.ToString();
                s4 = c.sub4.ToString();
                s5 = c.sub5.ToString();
                cl = c.class_id.Trim();
            }

            ss = "This is to here by that student of ID " + id + " has got the Marks in class " + cl + " as shown below";

            cell = PhraseCell(new Phrase(ss), PdfPCell.ALIGN_CENTER);
            cell.Colspan = 2;
            cell.PaddingBottom = 30f;
            table.AddCell(cell);
            ss = "Student ID : " + id + "\n\n";
            ss += "Student's Class : " + cl + "\n\n\n\n";
            ss += "Hindi : " + s1 + "\n\n";
            ss += "Gujarati : " + s2 + "\n\n";
            ss += "English : " + s2 + "\n\n";
            ss += "Maths : " + s4 + "\n\n";
            ss += "Drawing : " + s5 + "\n\n";
            cell = PhraseCell(new Phrase(ss), PdfPCell.ALIGN_CENTER);
            cell.Colspan = 2;
            cell.PaddingBottom = 30f;
            table.AddCell(cell);
            
            pdfDoc.Add(table);
            pdfDoc.Close();
            Response.Write(pdfDoc);
            Response.End();
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
    }
}
