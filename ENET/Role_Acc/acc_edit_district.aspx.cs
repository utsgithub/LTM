using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class acc_edit_district : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Todo: fetch data via code;
                ddlDistinct.SelectedIndex = int.Parse(Request.QueryString["did"]) - 1;
            }
        }
        protected void LinkButtonSubmit_Click(object sender, EventArgs e)
        {
            string getDistict = ddlDistinct.SelectedValue;
            int getUid = int.Parse(Request.QueryString["uid"]);
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.UpdateDistinct(getUid, getDistict);
            Response.Redirect("acc_edit_district?did=" + getDistict + "&uid=" + getUid);
        }
    }
}