using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Entity;
using System.Data.SqlClient;


namespace school_management
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        

        protected void Button1_Click1(object sender, EventArgs e)
        {
            string id = TextBox1.Text.Trim();
            string nam = "", dob = "", be = "", bg = "";
            using (var db = new schooldbEntities1())
                {
                    var na = (from b in db.students where b.stu_id.Trim() == id select b).Single();

                //    foreach (var c in na)
                  //  {
                        //if (c.stu_id.Trim() == id)
                        //{
                            nam = na.stu_name;
                            Response.Write("Name : " + nam);
                            dob = na.stu_dob;
                            be = na.stu_beh;
                            bg = na.stu_blo_gr;
                        //}
                        
                    //}
                }
            Response.Write("Details : " + nam + " " + dob + " " + be + " " + bg);

            
            

        }
    }
}