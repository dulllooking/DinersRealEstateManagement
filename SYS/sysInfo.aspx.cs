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
    public partial class sysInfo : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                loadSysInfo();
            }

        }

        private void loadSysInfo()
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String sqlString = "SELECT * FROM sysInfo WHERE id=1";
            SqlCommand command = new SqlCommand(sqlString, connection);

            connection.Open();
            SqlDataReader sqlDataReader = command.ExecuteReader();
            if (sqlDataReader.Read())
            {
                InputCompanyName.Text = sqlDataReader["name"].ToString();
                InputServiceTime.Text = sqlDataReader["serviceTime"].ToString();
                InputAddress.Text = sqlDataReader["address"].ToString();
                InputPhone.Text = sqlDataReader["phone"].ToString();
                InputFax.Text = sqlDataReader["fax"].ToString();
                InputMail.Text = sqlDataReader["mail"].ToString();
            }
            connection.Close();

        }
        protected void submit_Click(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String sqlString = $@"UPDATE sysInfo SET name=@name,serviceTime=@serviceTime,address=@address,phone=@phone,fax=@fax,mail=@mail WHERE id=1";
            SqlCommand command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@name", InputCompanyName.Text);
            command.Parameters.AddWithValue("@serviceTime", InputServiceTime.Text);
            command.Parameters.AddWithValue("@address", InputAddress.Text);
            command.Parameters.AddWithValue("@phone", InputPhone.Text);
            command.Parameters.AddWithValue("@fax", InputFax.Text);
            command.Parameters.AddWithValue("@mail", InputMail.Text);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
        }
    }
}