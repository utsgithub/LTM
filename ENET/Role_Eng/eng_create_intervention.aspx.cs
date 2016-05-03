using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace IMS
{
    public partial class eng_create_intervention : System.Web.UI.Page
    {
        /// <summary>
        /// Before the create intervention page is loaded the detail of the intervention is acquired 
        /// to select the correct intervention type. The date of the intervention is programatically
        /// inserted into the date textbox.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                int cid = int.Parse(Request.QueryString["cid"]);
                hfClientID.Value = cid.ToString();
                DataLayer.DataOperator obj = new DataLayer.DataOperator();
                IMS.DataLayer.client client = obj.GetClientByID(cid);
                LabelClient.Text = client.name;

                DataLayer.DataOperator dbo = new DataLayer.DataOperator();
                ddInt.DataSource = dbo.GetInterventionTypes();                
                ddInt.DataBind();

                txtDate.Text = DateTime.Now.Date.ToString("yyyy-MM-dd");
            }
        }

        /// <summary>
        /// This method defines the behavior of the Submit button for the create
        /// intervention page. Once the values are inserted in the form and the user
        /// selects the submit button all the data is collected and a new intervention
        /// is created. If the labor and cost fields are empty then the default cost and
        /// value for the intervention is collected from the database using the Data Operator
        /// from the Data Layer folder. Once all the fields are validated, a new core info record
        /// is created, the user is then redirected to the client detail page with the listing
        /// of all interventions related to that client and the newly created intervention.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            // Todo: Style of date input;
            // Todo: Style of button;
            int getLabour = 0;
            int getCost = 0;
            int getIntType = int.Parse(ddInt.SelectedValue);
            int getCID = int.Parse(hfClientID.Value);
            if (txtLabour.Text == "" || txtCost.Text == "")
            {
                DataLayer.DataOperator intType = new DataLayer.DataOperator();
                IMS.DataLayer.interventionType intTypeRow = intType.GetIntTypeByID(getIntType);
                getLabour = int.Parse(intTypeRow.amount_of_labour);
                getCost = int.Parse(intTypeRow.cost_of_materials);
            }
            else
            {
                getLabour = int.Parse(txtLabour.Text);
                getCost = int.Parse(txtCost.Text);
            }
            DataLayer.DataOperator dataUserInfo = new DataLayer.DataOperator();
            string UID = User.Identity.GetUserId().ToString();
            IMS.DataLayer.view_user user = dataUserInfo.GetUserByID(UID);
            int UserID = user.users_ID;
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.CreateCoreInfo(getIntType, getCID, getLabour, getCost, UserID, DateTime.Parse(txtDate.Text), "Proposed", "", 0, DateTime.Now);
            Response.Redirect("eng_detail_client?cid=" + getCID);
        }
    }
}