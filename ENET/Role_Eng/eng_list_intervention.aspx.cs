using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace IMS
{
    public partial class eng_list_intervention : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    DisplayAllClientsSqlConnection();
        }

        //private void DisplayAllClientsSqlConnection()
        //{
        //    /** Previously using manual SQL custom objects
        //    var connString = ConfigurationManager.ConnectionStrings["IMSserver"].ConnectionString;
        //    var conn = new SqlConnection(connString);
        //    //var selectCommand = new SqlCommand("SELECT c.ID, c.name, c.descriptive, d.Districts FROM clients C INNER JOIN districts d on C.district_id = d.ID", conn);
        //    //var selectCommand = new SqlCommand("SELECT * FROM eng_list_client", conn);
        //    var selectCommand = new SqlCommand("SELECT * FROM view_client_list", conn);
        //    var adapter = new SqlDataAdapter(selectCommand);
        //    var resultSet = new DataSet(); adapter.Fill(resultSet);
        //    ListAllClientsGridView.DataSource = resultSet;
        //    ListAllClientsGridView.DataBind(); conn.Close();*/


        //    // Typed Data Sets
        //    //var clients_table = new ViewClientsTableAdapter().GetData();

        //    //ListAllClientsGridView.DataSource = clients_table;
        //    //ListAllClientsGridView.DataBind();
        //}
    }
}