using System;
using System.Data.SqlClient;
using System.Web.Configuration;
using System.Text;

namespace DinersRealEstateManagement
{
    public partial class news_list : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                LoadNewsList();
            }
        }

        private void LoadNewsList()
        {
            DateTime nowTime = DateTime.Now;
            string nowDate = nowTime.ToString("yyyy-MM-dd");
            int listNum = short.Parse(NewsDropDownList.SelectedValue);
            int count = 1;
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            string sql = "SELECT * FROM newsList WHERE releaseDate <= @nowDate ORDER BY releaseDate DESC";
            SqlCommand command = new SqlCommand(sql, connection);
            command.Parameters.AddWithValue("@nowDate", nowDate);
            connection.Open();
            StringBuilder newsHtmlStr = new StringBuilder();
            SqlDataReader reader = command.ExecuteReader();
            while (reader.Read()) {
                DateTime dateTime = DateTime.Parse(reader["releaseDate"].ToString());
                string newsDate = dateTime.ToString("yyyy/M/d");
                string newsTitle = reader["title"].ToString();
                newsHtmlStr.Append($"<tr><th scope='row'>{newsDate}</th><td class='fw-bolder'>{newsTitle}</td></tr>");
                count++;
                if (count == listNum) {
                    break;
                }
            }
            LiteralNewsList.Text = newsHtmlStr.ToString();
        }

        protected void NewsDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            LoadNewsList();
        }
    }
}