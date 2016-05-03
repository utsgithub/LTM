using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
//using IMS.IMSTableAdapters;
using Microsoft.AspNet.Identity;
using Microsoft.AspNet.Identity.EntityFramework;

namespace IMS
{
    public partial class eng_list_client : System.Web.UI.Page
    {
        /// <summary>
        /// For this page, before the page is loaded the User ID is obtained to gather the 
        /// user ID from which the district ID is gathered in order to show a list of clients
        /// that belong to that specific district.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //int UID = int.Parse(User.Identity.GetUserId());
            String UID = User.Identity.GetUserId().ToString();
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            IMS.DataLayer.view_user user = obj.GetUserByID(UID);

            int DID = user.Districts_ID;
            SqlDataSource1.SelectCommand = "SELECT [name], [descriptive], [Districts], [clients_ID] FROM [view_client_list] WHERE ([district_id] = " + DID + ")";
        }
    }
}