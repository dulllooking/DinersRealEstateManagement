using MailKit.Net.Smtp;
using MimeKit;
using System;
using System.Data.SqlClient;
using System.Text;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinersRealEstateManagement
{
    public partial class services : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                LoadNewsList();
            }
        }

        private void LoadNewsList()
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string sql = "SELECT * FROM serviceList";
            SqlCommand command = new SqlCommand(sql, connection);
            connection.Open();
            StringBuilder newsHtmlStr = new StringBuilder();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) {
                string city = reader["city"].ToString();
                string area = reader["area"].ToString();
                newsHtmlStr.Append($"<tr><th scope='row'>{city}</th><td class='fw-bolder'>{area}</td></tr>");
            }
            LiteralNewsList.Text = newsHtmlStr.ToString();
        }

    }
}