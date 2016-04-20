using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Session.Abandon();
        }

        protected void ButtonE_Click(object sender, EventArgs e)
        {
            Session["Name"] = "Tim";
            Session["Type"] = "Site Engineer";
            Session["UID"] = 1;
            Response.Redirect("~/about.aspx");
        }

        protected void ButtonM_Click(object sender, EventArgs e)
        {
            Session["Name"] = "Olivia";
            Session["Type"] = "Manager";
            Session["UID"] = 4;
            Response.Redirect("~/about.aspx");
        }

        protected void ButtonA_Click(object sender, EventArgs e)
        {
            Session["Name"] = "Peter";
            Session["Type"] = "Accountant";
            Session["UID"] = 7;
            Response.Redirect("~/about.aspx");
        }
    }
}