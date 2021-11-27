using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinersRealEstateManagement.SYS
{
    public partial class serviceManag : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Panel_Edit.Visible = true;
            Pane_view.Visible = false;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String sqlString = $"Insert into serviceList (city, area) values (@city, @area)";
            SqlCommand command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@city", InputCity.Text.Trim());
            command.Parameters.AddWithValue("@area", InputArea.Text.Trim());
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            
            clearInput();
            Panel_Edit.Visible = false;
            Pane_view.Visible = true;
            serviceList_GridView.DataBind();
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            clearInput();
            Panel_Edit.Visible = false;
            Pane_view.Visible = true;
        }
        private void clearInput()
        {
            InputCity.Text = "";
            InputArea.Text = "";
        }
    }
}