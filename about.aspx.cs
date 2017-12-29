using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace school_management
{
    public partial class about : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(Session["role"]!=null)
            {
                btn.Text = "Logout";
            }
            else
            {

            }

        }

        protected void btn_Click(object sender, EventArgs e)
        {
            if(btn.Text.Equals("Logout"))
            {
                Session.Abandon();
            }
            Response.Redirect("login.aspx");
        }
    }
}