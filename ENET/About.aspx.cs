using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null || Session["Type"] != null)
            {
                lblName.Text = Session["Name"].ToString();
                lblType.Text = Session["Type"].ToString();
            }
            else
            {
                Response.Redirect("~/com_error");
            }

        }

        protected void LBSessionClear_Click(object sender, EventArgs e)
        {
            Session.Abandon();
            Response.Redirect("~/default");
        }
    }
}