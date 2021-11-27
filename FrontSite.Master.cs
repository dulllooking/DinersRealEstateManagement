using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinersRealEstateManagement
{
    public partial class FrontSite : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                LoadInfo();
            }
        }

        private void LoadInfo()
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string sql = "SELECT TOP 1 * FROM sysInfo";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            SqlDataReader reader = command.ExecuteReader();
            if (reader.Read()) {
                companyName.InnerText = reader["name"].ToString();
                serviceTime.InnerText = reader["serviceTime"].ToString();
                string addressStr = reader["address"].ToString();
                addressLink.HRef = "https://www.google.com.tw/maps/search/" + addressStr;
                addressLink.InnerText = addressStr;
                string phoneStr = reader["phone"].ToString();
                phoneLink.HRef = "tel:" + phoneStr;
                phoneLink.InnerText = phoneStr;
                string faxStr = reader["fax"].ToString();
                faxLink.HRef = "fax:" + faxStr;
                faxLink.InnerText = faxStr;
                string mailStr = reader["mail"].ToString();
                emailLink.HRef = "mailto:" + mailStr;
                emailLink.InnerText = mailStr;
            }
            connection.Close();
        }
    }
}