using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class man_edit_intervention : System.Web.UI.Page
    {
        protected int CoreID
        {
            get
            {
                if (ViewState["CoreID"] == null)
                    return -1;
                else
                    return (int)ViewState["CoreID"];
            }
            set
            {
                ViewState["CoreID"] = value;
            }
        }

        //  int coreid = int.Parse(Request.QueryString["coreid"]);
        protected void Page_Load(object sender, EventArgs e)
        {
            //Todo: Simple Click and change status;
            if (!Page.IsPostBack)
            {
                CoreID = int.Parse(Request.QueryString["coreid"]);
            }
        }

        protected void btnApprove_Click(object sender, EventArgs e)
        {
            //Todo: Set Coreid global in this page;

            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.UpdatesStaus(CoreID, "Approved");
            DetailsView1.DataBind();
        }

        protected void btnCancelled_Click(object sender, EventArgs e)
        {
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.UpdatesStaus(CoreID, "Cancelled");
            DetailsView1.DataBind();
        }
    }
}