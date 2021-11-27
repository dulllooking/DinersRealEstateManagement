using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Cryptography;
using System.Text;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinersRealEstateManagement.SYS
{
    public partial class backSideAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                CountForStopDel();
            }
        }


        protected void Btn_Add_Click(object sender, EventArgs e)
        {
            Panel_Edit.Visible = true;
            Pane_view.Visible = false;
            divReSetCheck.Visible = false;
            divReSetPassword.Visible = false;
            LabReSetCheck.Visible = false;
            LabReSetPassword.Visible = false;
        }

        protected void submit_Click(object sender, EventArgs e)
        {
            if (InputAccount.Text == "" || InputPassword.Text=="")
            {
                if (InputAccount.Text == "") Account_Err.Visible = true;
                if (InputPassword.Text == "") Password_Err.Visible = true;
                return;
            }
            if (checkAccountDuplicate())
            {
                Account_Dub.Visible = true;
                return;
            }
            else
            {
                SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sqlString = "Insert into backSideAccount (account, password) values(@account,@password)";
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.AddWithValue("@account", InputAccount.Text.Trim());
                command.Parameters.AddWithValue("@password", HashPassword.GetHash(InputPassword.Text).Trim());
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
            }
            Response.Redirect("backSideAccount.aspx");
        }

        protected void cancel_Click(object sender, EventArgs e)
        {
            clearInput();
            Panel_Edit.Visible = false;
            Pane_view.Visible = true;
            Response.Redirect("backSideAccount.aspx");
        }
        private void clearInput()
        {
            InputAccount.Text = "";
            InputPassword.Text = "";
            Account_Err.Visible = false;
            Password_Err.Visible = false;
            Account_Dub.Visible = false;
            InputAccount.Enabled = true;
        }
        private bool checkAccountDuplicate()
        {
            bool flag = false;
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String sqlString = "SELECT * FROM backSideAccount WHERE account=@account";
            SqlCommand command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@account", InputAccount.Text.Trim());

            connection.Open();
            SqlDataReader sqlDataReader = command.ExecuteReader();
            if (sqlDataReader.Read())
            {
                flag = true;
            }
            connection.Close();
            return flag;
        }

        private void CountForStopDel()
        {
             GridView1.Rows[0].Cells[3].Controls.Clear();
        }

        protected void GridView1_DataBound(object sender, EventArgs e)
        {
            CountForStopDel();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName.Equals("Reset")) {
                divReSetCheck.Visible = true;
                Label_ID.Text = GridView1.Rows[Convert.ToInt32(e.CommandArgument)].Cells[1].Text;
                CountForStopDel();
                LabReSetCheck.Visible = false;
                LabReSetPassword.Visible = false;
            }
        }

        protected void BtnReSetCheck_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(TBoxReSetCheck.Text)) {
                SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sqlString = "SELECT * FROM backSideAccount WHERE id=@id AND password=@password";
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.AddWithValue("@id", Label_ID.Text.Trim());
                command.Parameters.AddWithValue("@password", HashPassword.GetHash(TBoxReSetCheck.Text).Trim());
                connection.Open();
                SqlDataReader sqlDataReader = command.ExecuteReader();
                if (sqlDataReader.Read()) {
                    divReSetCheck.Visible = false;
                    divReSetPassword.Visible = true;
                }
                else {
                    LabReSetCheck.Visible = true;
                }
                connection.Close();
                
            }
            else {
                LabReSetCheck.Visible = true;
            }
            CountForStopDel();
        }

        protected void BtnReSetPassword_Click(object sender, EventArgs e)
        {
            if (!String.IsNullOrEmpty(TBoxReSetPassword.Text)) {
                SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sqlString = "UPDATE backSideAccount SET password=@password WHERE id=@id";
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.AddWithValue("@id", Label_ID.Text.Trim());
                command.Parameters.AddWithValue("@password", HashPassword.GetHash(TBoxReSetPassword.Text).Trim());
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                divReSetPassword.Visible = false;
                Response.Redirect("backSideAccount.aspx");
            }
            else {
                LabReSetPassword.Visible = true;
            }
            CountForStopDel();
        }
    }
}