using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class eng_detail_intervention : System.Web.UI.Page
    {
        /// <summary>
        /// Once page is loaded the the back button's navigate URL is set based
        /// on the query string provided in the URL.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            //Todo: 1. get did, 2. complicate insert, 3. data type
            if (!Page.IsPostBack)
            {
                if (Request.QueryString["cid"] != null)
                {
                    btnBack.NavigateUrl = "eng_detail_client?cid=" + Request.QueryString["cid"];
                }
                else
                {
                    btnBack.NavigateUrl = "eng_list_intervention";
                }
            }
        }
    }
}