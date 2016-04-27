using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
//using IMS.IMSTableAdapters;

namespace IMS
{
    public partial class acc_list_users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            String sql = "SELECT userName AS 'engineer', SUM(labour) AS 'hours', SUM(cost) AS 'cost' FROM view_detail_interventions WHERE status = 'Completed' GROUP BY userNameORDER BY userName ASC";
            SqlConnection conn = new SqlConnection(ConfigurationManager.ConnectionStrings["DefaultConnection"].ConnectionString);
            using (conn)
            {
                SqlCommand command = new SqlCommand(sql, conn);
                conn.Open();
                SqlDataReader reader = command.ExecuteReader(CommandBehavior.CloseConnection);
                conn.Close();
            }

            //ReportGridView.DataSource = null;
            //ReportGridView.DataBind();
        }
    }
}