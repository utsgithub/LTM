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
        /// <summary>
        /// When the page is loaded the change district drop down list district value
        /// is set based on the did (District ID of the User). In the URL the uid (User id) 
        /// and did (District Id) is passed and this information is requested to display
        /// the necessary information on the page.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Page.IsPostBack)
            {
                //Todo: fetch data via code;
                ddlDistinct.SelectedIndex = int.Parse(Request.QueryString["did"]) - 1;
            }
        }

        /// <summary>
        /// This method is for submitting the form for changing the current district of the user.
        /// It gets the selected value from the change district dropdown list. Then from the 
        /// DataLayer DataOperator object, the district of the user is updated. Once updated
        /// it redirects the accountant back to the same page with the updated district displayed
        /// on screen and ready to change again if user (accountant) wishes to do so.
        /// </summary>
        /// <param name="sender"></param>
        /// <param name="e"></param>
        protected void LinkButtonSubmit_Click(object sender, EventArgs e)
        {
            string getDistict = ddlDistinct.SelectedValue;
            int getUid = int.Parse(Request.QueryString["uid"]);
            DataLayer.DataOperator obj = new DataLayer.DataOperator();
            obj.UpdateDistrict(getUid, getDistict);
            Response.Redirect("acc_edit_district?did=" + getDistict + "&uid=" + getUid);
        }
    }
}