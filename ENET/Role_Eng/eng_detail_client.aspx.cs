using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using IMS.IMSTableAdapters;

namespace IMS
{
    public partial class eng_detail_client : System.Web.UI.Page
    {
        /// <summary>
        /// Once the page is loaded for the detail of a client, the create intervention button's
        /// href is generated based on the query string in the url.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            hlCreateInt.NavigateUrl = "eng_create_intervention?cid=" + Request.QueryString["cid"];
        }
    }
}