using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace IMS.Role_Eng
{
    public partial class eng_create_client : System.Web.UI.Page
    {
        /// <summary>
        /// Before this page is created the user id  from the URL is used to find the user details
        /// in order to determine the district id for the District drop down list which is set permanently
        /// based on the User's District location.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string UID = User.Identity.GetUserId().ToString();
                DataLayer.DataOperator obj = new DataLayer.DataOperator();
                IMS.DataLayer.view_user user = obj.GetUserByID(UID);

                int DID = user.Districts_ID;
                DataLayer.DataOperator dbo = new DataLayer.DataOperator();
                ddDistrict.DataSource = dbo.GetDistrictList();
                ddDistrict.DataBind();
                ddDistrict.SelectedValue = DID.ToString();
            }
        }

        /// <summary>
        /// On submission of the form the client is created in the database and the user is
        /// redirected back to the list of clients page.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.CreateClient(txtName.Text.ToString(), txtDes.Text.ToString(), int.Parse(ddDistrict.SelectedValue));
            Response.Redirect("eng_list_client");
        }
    }
}