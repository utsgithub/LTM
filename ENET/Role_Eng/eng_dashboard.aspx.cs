using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class eng_dashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null
                && Session["UID"] != null
                && Session["Type"].ToString() == "Site Engineer")
            {
                //lblName.Text = Session["Name"].ToString();
                //lblType.Text = Session["Type"].ToString();
            }
            else
            {
                //lblName.Text = Session["Name"].ToString();
                //lblType.Text = Session["Type"].ToString();
                Response.Redirect("~/com_error");
            }
        }
    }
}