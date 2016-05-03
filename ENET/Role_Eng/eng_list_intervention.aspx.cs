using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Identity;

namespace IMS
{
    public partial class eng_list_intervention : System.Web.UI.Page
    {
        /// <summary>
        /// Before the list of interventions page is loaded the district id 
        /// of the user is obtained and the sql data source's select command is
        /// created to include the district ID for the current user, in order to
        /// display all the interventions that relate to that district.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {

            String UID = User.Identity.GetUserId().ToString();
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            IMS.DataLayer.view_user user = obj.GetUserByID(UID);

            int DID = user.Districts_ID;
            SqlDataSource1.SelectCommand = "SELECT [interventionTypes_name], [clients_name], [status], [iDate], [coreInfo_ID] FROM [view_detail_interventions] WHERE ([Districts_ID] = " + DID + ")";
        }
    }
}