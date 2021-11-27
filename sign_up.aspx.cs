using System;
using System.Data.SqlClient;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;
using System.Web.UI;
using MailKit.Net.Smtp;
using MimeKit;

namespace DinersRealEstateManagement
{
    public partial class sign_up : System.Web.UI.Page
    {
        //倒數時間：60秒
        private const int CountdownTime = 60*3;
        //mail驗證時間：30分鐘
        private const int VeriTime = 3;
        private static string strMailVeriCode;
        private static string strSMSVeriCode;
        private static DateTime dateMail;
        private static DateTime dateSMS;
        private static bool DEBUG = false;

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                dateSMS = DateTime.Now;
                dateMail = DateTime.Now;
                strMailVeriCode = "";
                strSMSVeriCode = "";
            }
        }
        //protected void Timer_Vercode_Tick(object sender, EventArgs e)
        //{
        //    DateTime now = DateTime.Now;
        //    int diffMail=0;
        //    int diffSMS = 0;
        //    if (Session["SendMailTime"] == null && Session["SendSMSTime"] == null)
        //    {
        //        Btn_SendPhoneVeri.Enabled = true;
        //        Btn_SendMailVeri.Enabled = true;
        //        Timer_Vercode.Enabled = false;
        //    }
        //    else
        //    {
        //        if (Session["SendMailTime"] != null && diffMail<= VeriTime)
        //        {
        //            DateTime sendMailTime = Convert.ToDateTime(Session["SendMailTime"]);
        //            diffMail = Convert.ToInt32((now - sendMailTime).TotalSeconds);
        //            if (diffMail == CountdownTime) 
        //                Btn_SendMailVeri.Enabled = true;
        //            if (diffMail == VeriTime) 
        //                strMailVeriCode = Vericode.GetVeriCode(8);
        //        }
        //        if (Session["SendSMSTime"] != null)
        //        {
        //            DateTime sendSMSTime = Convert.ToDateTime(Session["SendSMSTime"]);
        //            diffSMS = Convert.ToInt32((now - sendSMSTime).TotalSeconds);
        //            if (diffSMS == CountdownTime) 
        //                Btn_SendPhoneVeri.Enabled = true;
        //            if (diffSMS == VeriTime) 
        //                strSMSVeriCode = Vericode.GetVeriCode(6);
        //        }
        //        if (diffMail== VeriTime && diffSMS== VeriTime)
        //        {
        //            Btn_SendPhoneVeri.Enabled = true;
        //            Btn_SendMailVeri.Enabled = true;
        //            Timer_Vercode.Enabled = false;
        //        }
        //    }
        //}

        protected void confirm_Click(object sender, EventArgs e)
        {
            if (signup.Checked && serves.Checked && personal.Checked) {
                Panel_Check.Visible = false;
                Panel_signup.Visible = true;
                Page.SetFocus(Panel_signup);
                Basic_Info.Attributes.Add("class", "active");
            }
        }
        protected void Btn_SighInConfirm_Click(object sender, EventArgs e)
        {
            if (DataInvalidCheck()) {
                Panel_signup.Visible = false;
                Panel_Complete.Visible = true;
                SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
                String sqlString = "Insert into Account (account, password, name, phone,mophone,mail,address,city,lineID) values(@account,@password,@name,@phone,@mophone,@mail,@address,@city,@lineID)";
                SqlCommand command = new SqlCommand(sqlString, connection);
                command.Parameters.AddWithValue("@account", TextBox_Account.Text);
                command.Parameters.AddWithValue("@password", TextBox_Pwd.Text);
                command.Parameters.AddWithValue("@name", TextBox_Name.Text);
                command.Parameters.AddWithValue("@phone", TextBox_Phone.Text);
                command.Parameters.AddWithValue("@mophone", TextBox_MoPhone.Text);
                command.Parameters.AddWithValue("@mail", TextBox_Mail.Text);
                command.Parameters.AddWithValue("@address", TextBox_Address.Text);
                command.Parameters.AddWithValue("@city", DDList_City.SelectedItem.Text== "-----請選擇-----" ? "": DDList_City.SelectedItem.Text);
                command.Parameters.AddWithValue("@lineID", TextBox_Line.Text);
                connection.Open();
                command.ExecuteNonQuery();
                connection.Close();
                Register_Success.Attributes.Add("class", "active");
                Page.SetFocus(Panel_Complete);
            }
        }

        //protected void Btn_SendPhoneVeri_Click(object sender, EventArgs e)
        //{
        //    strSMSVeriCode = Vericode.GetVeriCode(6);
        //    if (!DEBUG) 
        //        Vericode.VericodeSMSSend(TextBox_MoPhone.Text, strSMSVeriCode);
        //    //Btn_SendPhoneVeri.Enabled = false;
        //    //Timer_Vercode.Enabled = true;
        //    //Session["SendSMSTime"] = DateTime.Now;

        //}
        [System.Web.Services.WebMethod]
        public static void sendSMS(string phone)
        {
            if (!checkSmsEnble(phone)) return;
            strSMSVeriCode = Vericode.GetVeriCode(6);
            if (!DEBUG)
                Vericode.VericodeSMSSend(phone, strSMSVeriCode);

            dateSMS = DateTime.Now;

            //Btn_SendPhoneVeri.Enabled = false;
            //Timer_Vercode.Enabled = true;
            //Session["SendSMSTime"] = DateTime.Now;

        }

        private static bool checkSmsEnble(string phone)
        {
            bool flag = false;
            int count = 0;
            DateTime dateTime = DateTime.Now;
            DateTime now = DateTime.Now;
            int diff = 0;
            int id = -1;
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String sqlString = "SELECT * FROM SMSlog WHERE phone=@phone";
            SqlCommand command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@phone", phone);
            connection.Open();
            SqlDataReader sqlDataReader = command.ExecuteReader();
            if (sqlDataReader.Read()) {
                count = Convert.ToInt32(sqlDataReader["count"]);
                dateTime = Convert.ToDateTime(sqlDataReader["date"]);
                id = Convert.ToInt32(sqlDataReader["id"]);
                diff = Convert.ToInt32((now - dateTime).TotalHours);
                if (diff < 24) {
                    if (count < 10) flag = true;
                    else HttpContext.Current.Response.Write("<script>alert('此手機號碼一天已經超過10次，無法發送了!');location.href='sign_up.aspx';</script>");
                }
                else {
                    dateTime = DateTime.Now;
                    count = 0;
                    flag = true;
                }

            }
            else flag = true;
            connection.Close();

            connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            if (id == -1) sqlString = "Insert into SMSlog (phone, count, date) values(@phone,@count,@date)";
            else sqlString = "UPDATE SMSlog SET count=@count, date=@date WHERE phone=@phone";
            command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@phone", phone);
            command.Parameters.AddWithValue("@count", count + 1);
            command.Parameters.AddWithValue("@date", dateTime);
            connection.Open();
            command.ExecuteNonQuery();
            connection.Close();
            return flag;
        }

        [System.Web.Services.WebMethod]
        public static void sendMail(string name, string mail)
        {
            string strerr = "";
            strMailVeriCode = Vericode.GetVeriCode(8);
            if (!DEBUG)
                strerr = Vericode.SendMailVeriCode(name, mail, strMailVeriCode);

            dateMail = DateTime.Now;
            //Btn_SendMailVeri.Enabled = false;
            //Timer_Vercode.Enabled = true;
            //Session["SendMailTime"] = DateTime.Now;

        }
        //[System.Web.Services.WebMethod]
        //public static void reSetMailVeriCode()
        //{
        //    strMailVeriCode = Vericode.GetVeriCode(8);
        //}
        //public static void reSetSMSVeriCode()
        //{
        //    strSMSVeriCode = Vericode.GetVeriCode(6);
        //}
        private bool DataInvalidCheck()
        {
            bool check = true;
            const string Email = @"^[\w-]+(\.[\w-]+)*@[\w-]+(\.[\w-]+)+$";
            const string NumericOrLetter = "^[A-Za-z0-9]+$";
            const string Mobile = "^09+[0-9]{8}$";

            TextBox_Name.CssClass = "form-control";
            TextBox_Account.CssClass = "form-control";
            TextBox_Pwd.CssClass = "form-control";
            TextBox_PwdCheck.CssClass = "form-control";
            TextBox_MoPhone.CssClass = "form-control";
            TextBox_Mail.CssClass = "form-control";
            TextBox_Address.CssClass = "form-control";
            TextBox_Line.CssClass = "form-control";
            TextBox_MailVeri.CssClass = "form-control";
            TextBox_MoPhoneVeri.CssClass = "form-control";
            DDList_City.CssClass = "btn btn-outline-danger dropdown-toggle fs-5 fw-bolder";
            Account_Duplicate.Visible = false;
            //City_Err

            if (TextBox_Name.Text == "") {
                TextBox_Name.CssClass += " is-invalid";
                Page.SetFocus(TextBox_Name);
                check = false;
            }
            if (!Regex.IsMatch(TextBox_Account.Text, NumericOrLetter)) {
                TextBox_Account.CssClass += " is-invalid";
                Page.SetFocus(TextBox_Account);
                check = false;
            }
            else if (checkAccountDuplicate()) {
                Account_Duplicate.Visible = true;
                Page.SetFocus(Account_Duplicate);
                check = false;
            }
            if (!Regex.IsMatch(TextBox_Pwd.Text, NumericOrLetter)) {
                TextBox_Pwd.CssClass += " is-invalid";
                Page.SetFocus(TextBox_Pwd);
                check = false;
            }
            else if (!String.Equals(TextBox_Pwd.Text, TextBox_PwdCheck.Text)) {
                TextBox_PwdCheck.CssClass += " is-invalid";
                Page.SetFocus(TextBox_PwdCheck);
                check = false;
            }
            if (!Regex.IsMatch(TextBox_MoPhone.Text, Mobile)) {
                TextBox_MoPhone.CssClass += " is-invalid";
                Page.SetFocus(TextBox_MoPhone);
                check = false;
            }

            if (!String.IsNullOrEmpty(TextBox_Mail.Text)) {
                if (!Regex.IsMatch(TextBox_Mail.Text, Email) ) {
                    TextBox_Mail.CssClass += " is-invalid";
                    Page.SetFocus(TextBox_Mail);
                    check = false;
                }
                if (!String.Equals(TextBox_MailVeri.Text, strMailVeriCode) || strMailVeriCode == "" || checkVeriCodeTime(dateMail)) {
                    TextBox_MailVeri.CssClass += " is-invalid";
                    Page.SetFocus(TextBox_MailVeri);
                    check = false;
                }
            }
            
            if (!String.Equals(TextBox_MoPhoneVeri.Text, strSMSVeriCode) || strSMSVeriCode == "" || checkVeriCodeTime(dateSMS)) {
                TextBox_MoPhoneVeri.CssClass += " is-invalid";
                Page.SetFocus(TextBox_MoPhoneVeri);
                check = false;
            }
            return check;
        }

        private bool checkVeriCodeTime(DateTime datetime)
        {
            bool flag = false;
            int diffMail = Convert.ToInt32((DateTime.Now - datetime).TotalMinutes);
            if (diffMail > VeriTime) flag = true;
            return flag;
        }

        private bool checkAccountDuplicate()
        {
            bool flag = false;
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);
            String sqlString = "SELECT * FROM Account WHERE account=@account";
            SqlCommand command = new SqlCommand(sqlString, connection);
            command.Parameters.AddWithValue("@account", TextBox_Account.Text);

            connection.Open();
            SqlDataReader sqlDataReader = command.ExecuteReader();
            if (sqlDataReader.Read()) {
                flag = true;
            }
            connection.Close();
            return flag;
        }
    }
}