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
using IMS.IMSTableAdapters;

namespace IMS
{
    public partial class eng_detail_client : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.QueryString["ID"] != null)
            {
                int id = int.Parse(Request.QueryString["ID"]);

                DisplayClientSqlConnection(id);
                DisplayClientInterventionsSqlConnection(id, 1);
            }
        }

        private void DisplayClientSqlConnection(int id)
        {
            /*var connString = ConfigurationManager.ConnectionStrings["IMSserver"].ConnectionString;
            var conn = new SqlConnection(connString); var cmd = new SqlCommand(); SqlDataReader reader;
            //cmd.CommandText = String.Format("SELECT c.ID, c.name, c.descriptive, d.Districts FROM clients C INNER JOIN districts d on C.district_id = d.ID WHERE c.ID = {0} ", id);
            //cmd.CommandText = String.Format("SELECT * FROM eng_list_client WHERE clients_ID = {0} ", id);
            cmd.CommandText = String.Format("SELECT * FROM view_client_list WHERE clients_ID = {0} ", id);
            cmd.CommandType = CommandType.Text;
            cmd.Connection = conn; conn.Open();
            reader = cmd.ExecuteReader();
            if(reader.HasRows)
            { while(reader.Read()) {
                NameLabel.Text = reader.GetString(1);
                DescriptiveLabel.Text = reader.GetString(2);
                DistrictLabel.Text = reader.GetString(4); } }
            reader.Close(); conn.Close();*/

            var client = new ViewClientsTableAdapter().FindClient(id);

            foreach(DataRow row in client.Rows)
            {
                NameLabel.Text = row["name"] as string;
                DescriptiveLabel.Text = row["descriptive"] as string;
                DistrictLabel.Text = row["Districts"] as string;
            }

        }
        
        private void DisplayClientInterventionsSqlConnection(int id, int user_id)
        {
            // For the time being User ID 1 will handle the user, this will need to updated to reflect the logged in user's id

            // ALSO Need a Primary Key for Intervention Table also need to pass this ID over to the detailed intervention page
            // OOPS: Primary Key not required, core info ID is the Unique Identifier for all the client interventions in that list.

            /*var connString = ConfigurationManager.ConnectionStrings["IMSserver"].ConnectionString;
            var conn = new SqlConnection(connString);
            //var selectCommand = new SqlCommand("SELECT c.ID, c.name, c.descriptive, d.Districts FROM clients C INNER JOIN districts d on C.district_id = d.ID", conn);
            string query = String.Format("SELECT * FROM view_detail_interventions WHERE clients_id = {0} AND user_id = {1} ", id, user_id);
            var selectCommand = new SqlCommand(query, conn);
            var adapter = new SqlDataAdapter(selectCommand);
            var resultSet = new DataSet(); adapter.Fill(resultSet);
            ListAllClientInterventionsGridView.DataSource = resultSet;
            ListAllClientInterventionsGridView.DataBind(); conn.Close();*/

            var interventions = new ViewDetailedInterventionsTableAdapter().GetInterventions(id, 1);

            ListAllClientInterventionsGridView.DataSource = interventions;
            ListAllClientInterventionsGridView.DataBind();
        }
    }
}