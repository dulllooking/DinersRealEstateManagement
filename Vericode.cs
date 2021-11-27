using MailKit.Net.Smtp;
using MimeKit;
using System;
using System.IO;
using System.Net;
using System.Text;
using System.Web;
using System.Web.Configuration;

namespace DinersRealEstateManagement
{
    public class Vericode
    {
        public static string GetVeriCode(int len)
        {
            string characters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
            var Charsarr = new char[len];
            var random = new Random();

            for (int i = 0; i < len; i++)
            {
                Charsarr[i] = characters[random.Next(characters.Length)];
            }

            var resultString = new String(Charsarr);
            return (resultString);
        }
        public static void VericodeSMSSend(string toAddress, string veriCode)
        {
            string SMSAccount = WebConfigurationManager.AppSettings["SMSAccount"];
            string SMSPassword = WebConfigurationManager.AppSettings["SMSPassword"];
            StringBuilder reqUrl = new StringBuilder();
            reqUrl.Append("https://smsb2c.mitake.com.tw/b2c/mtk/SmSend");
            StringBuilder para = new StringBuilder();
            para.Append($"username={SMSAccount}");
            para.Append($"&password={SMSPassword}");
            para.Append($"&dstaddr={toAddress}");
            para.Append("&smbody=").Append(HttpUtility.UrlEncode($"感謝您註冊本站會員，手機驗證碼為 {veriCode} ，請於3分鐘內完成認證。", Encoding.GetEncoding("Big5")));
            HttpWebRequest request = (HttpWebRequest)WebRequest.Create(new Uri(reqUrl.ToString()));
            request.Method = "POST";
            request.ContentType = "application/x-www-form-urlencoded";
            byte[] bs = Encoding.UTF8.GetBytes(para.ToString());
            request.ContentLength = bs.Length;
            request.GetRequestStream().Write(bs, 0, bs.Length);
            HttpWebResponse response = (HttpWebResponse)request.GetResponse();
            StreamReader sr = new StreamReader(response.GetResponseStream());
            string result = sr.ReadToEnd();
        }
        public static string SendMailVeriCode(string toName,string toAddress, string veriCode)
        {
            string errMsg = "";
            string fromAddress = WebConfigurationManager.AppSettings["gmailAccount"];
            string fromName = "大來不動產鑑定顧問有限公司";
            string title = "會員認證通知";
            string serverAddress = "smtp.gmail.com";
            int port = 587;
            string mailAccount = WebConfigurationManager.AppSettings["gmailAccount"];
            string mailPassword = WebConfigurationManager.AppSettings["gmailPassword"];

            //建立建立郵件
            MimeMessage mail = new MimeMessage();
            // 添加寄件者
            mail.From.Add(new MailboxAddress(fromName, fromAddress));
            // 添加收件者
            mail.To.Add(new MailboxAddress(toName, toAddress.Trim()));
            // 設定郵件標題
            mail.Subject = title;
            //使用 BodyBuilder 建立郵件內容
            BodyBuilder body = new BodyBuilder();
            //設定文字內容
            body.TextBody = $"感謝您註冊本站會員，網路驗證碼為 {veriCode} ，請於3分鐘內完成認證。";
            // 設定 HTML 內容
            //body.HtmlBody = "<p> HTML 內容 </p>";
            // 設定附件
            //body.Attachments.Add("檔案路徑");
            // 設定郵件內容
            mail.Body = body.ToMessageBody();

            using (var client = new SmtpClient())
            {
                client.CheckCertificateRevocation = false;
                //SSL加密
                bool useSsl = false;
                //連線Mail Server
                client.Connect(serverAddress, port, useSsl);
                //帳號驗證
                client.Authenticate(mailAccount, mailPassword);
                //送出信件
                client.Send(mail);
                //中斷連線
                client.Disconnect(true);
            }

            return errMsg;
        }
    }
}