using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IMS.IMSTableAdapters;

namespace IMS
{
    public partial class man_list_intervention : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayAllClientsSqlConnection();
        }
        private void DisplayAllClientsSqlConnection()
        {
            var man_list_intervention = new ViewDetailedInterventionsTableAdapter().GetData();

            ListAllman_list_intervention.DataSource = man_list_intervention;
            ListAllman_list_intervention.DataBind();

        }
    }
}