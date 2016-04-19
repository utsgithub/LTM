using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class com_error : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Todo: if else (block);
            //Todo: Set 404 Page;
            if (Session["Name"] != null || Session["Type"] != null)
            {
                lblName.Text = Session["Name"].ToString();
                lblType.Text = Session["Type"].ToString();
            }
        }
    }
}