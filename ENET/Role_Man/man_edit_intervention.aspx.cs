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
        /// <summary>
        /// This property is created to store the Core Information ID
        /// </summary>
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

        /// <summary>
        /// Once page is loaded the core id property is set based on the query string
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //Todo: Simple Click and change status;
            if (!Page.IsPostBack)
            {
                CoreID = int.Parse(Request.QueryString["coreid"]);
            }
        }

        /// <summary>
        /// Once the approve button is selected the CoreID property is used,
        /// the Update Status is called from the data layer for the CoreID and
        /// the Approved message is sent to the database, thereby only the status
        /// of that core info record is updated. The data is then bind in the grid view.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnApprove_Click(object sender, EventArgs e)
        {
            //Todo: Set Coreid global in this page;

            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.UpdatesStaus(CoreID, "Approved");
            DetailsView1.DataBind();
        }

        /// <summary>
        /// Once the cancel button is selected the CoreID property is used,
        /// the Update Status is called from the data layer for the CoreID and
        /// the Cancelled message is sent to the database, thereby only the status
        /// of that core info record is updated. The data is then bind in the grid view.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnCancelled_Click(object sender, EventArgs e)
        {
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.UpdatesStaus(CoreID, "Cancelled");
            DetailsView1.DataBind();
        }
    }
}