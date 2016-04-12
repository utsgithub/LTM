using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using IMS.IMSTableAdapters;

namespace IMS
{
    public partial class acc_list_users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DisplayAllUsersSqlConnection();
        }

        private void DisplayAllUsersSqlConnection()
        {
            /*var connString = ConfigurationManager.ConnectionStrings["IMSserver"].ConnectionString;
            var conn = new SqlConnection(connString);
            var selectCommand = new SqlCommand("SELECT * FROM view_users", conn);
            var adapter = new SqlDataAdapter(selectCommand);
            var resultSet = new DataSet(); adapter.Fill(resultSet);
            ListAllUsersGridView.DataSource = resultSet;
            ListAllUsersGridView.DataBind(); conn.Close();*/

            var users = new ViewUsersTableAdapter().GetData();

            ListAllUsersGridView.DataSource = users;
            ListAllUsersGridView.DataBind();
        }
    }
}