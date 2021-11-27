using Newtonsoft.Json;
using System;
using System.Data;
using System.Data.SqlClient;
using System.Web;
using System.Web.Configuration;
using System.Web.Security;

namespace DinersRealEstateManagement.SYS
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void But_SignIn_Click(object sender, EventArgs e)
        {
            string account = TextBox_Account.Text.Trim();
            string password = HashPassword.GetHash(TextBox_Pwd.Text).Trim();

            //1.連線資料庫
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString);

            //2.sql語法 (@參數化避免隱碼攻擊) reader判斷條件設在SQL在資料庫找不到直接報錯
            string sql = "SELECT * FROM backSideAccount WHERE account=@account AND password=@password";

            SqlCommand command = new SqlCommand(sql, connection);

            command.Parameters.AddWithValue("@account", account);
            command.Parameters.AddWithValue("@password", password);

            SqlDataAdapter dataAdapter = new SqlDataAdapter(command);
            DataTable dataTable = new DataTable();
            dataAdapter.Fill(dataTable);

            //登入流程管理 (Session 改 Cookie)
            if (dataTable.Rows.Count > 0)
            {
                //SQL有找到資料時執行

                //宣告驗證票要夾帶的資料
                Person person = new Person();
                person.name = account;
                person.password = password;
                string userData = JsonConvert.SerializeObject(person);

                //設定驗證票(夾帶資料，cookie命名) //需額外引入using System.Web.Configuration;
                SetAuthenTicket(userData, account);

                ////導頁至權限分流頁
                //Response.Redirect("CheckAccountPage.aspx");
                Response.Redirect("newsManag.aspx");
            }
            else
            {
                //資料庫裡找不到相同資料時，表示帳號.密碼有誤!
                Lab_showErr.Visible = true;
                connection.Close();

                //終止程式
                //Response.End(); //會清空頁面
                return;
            }
        }

        //驗證函式
        private void SetAuthenTicket(string userData, string userId)
        {
            //宣告一個驗證票 //需額外引入using System.Web.Security;
            FormsAuthenticationTicket ticket = new FormsAuthenticationTicket(1, userId, DateTime.Now, DateTime.Now.AddHours(3), false, userData);
            //加密驗證票
            string encryptedTicket = FormsAuthentication.Encrypt(ticket);
            //建立Cookie
            HttpCookie authenticationCookie = new HttpCookie(FormsAuthentication.FormsCookieName, encryptedTicket);
            //將Cookie寫入回應
            Response.Cookies.Add(authenticationCookie);
        }

    }
}