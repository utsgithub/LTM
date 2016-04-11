using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

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
            var connString = ConfigurationManager.ConnectionStrings["IMSserver"].ConnectionString;
            var conn = new SqlConnection(connString);
            var selectCommand = new SqlCommand("SELECT * FROM query_user", conn);
            var adapter = new SqlDataAdapter(selectCommand);

            var resultSet = new DataSet();
            adapter.Fill(resultSet);

            ListAllUsersGridView.DataSource = resultSet;
            ListAllUsersGridView.DataBind();

            conn.Close();
        }
    }
}