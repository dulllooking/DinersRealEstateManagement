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
    public partial class newsManag1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Calendar_ReleaseDate.SelectedDate = Calendar_ReleaseDate.TodaysDate;
            }
        }

        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Panel_Edit.Visible = true;
            Pane_view.Visible = false;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if(InputTitle.Text=="")
            {
                Label_Err.Visible = true;
                return;
            }
            if(Label_ID.Text=="")
            {
                SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sqlString = $@"Insert into newsList (title, releaseDate)
                                  values(@title,@releaseDate)";
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.AddWithValue("@title", InputTitle.Text);
                command.Parameters.AddWithValue("@releaseDate", Calendar_ReleaseDate.SelectedDate);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
            else
            {
                SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sqlString = $@"UPDATE newsList SET title=@title,releaseDate=@releaseDate WHERE id=@id";
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.AddWithValue("@id", Label_ID.Text);
                command.Parameters.AddWithValue("@title", InputTitle.Text);
                command.Parameters.AddWithValue("@releaseDate", Calendar_ReleaseDate.SelectedDate);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
            NewsList_GridView.DataSourceID = "SqlDataSource1";
            clearInput();
            Panel_Edit.Visible = false;
            Pane_view.Visible = true;
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            clearInput();
            Panel_Edit.Visible = false;
            Pane_view.Visible = true;
        }
        private void clearInput() 
        {
            Label_ID.Text = "";
            InputTitle.Text = "";
            Calendar_ReleaseDate.SelectedDate = Calendar_ReleaseDate.TodaysDate;
            Label_Err.Visible = false;
        }
    }
}