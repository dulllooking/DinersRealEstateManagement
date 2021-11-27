using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace DinersRealEstateManagement.SYS
{
    /// <summary>
    /// SignOut 的摘要描述
    /// </summary>
    public class SignOut : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            FormsAuthentication.SignOut();
            if (HttpContext.Current.Session != null)
            {
                context.Session.Abandon();
            }
            
            FormsAuthentication.RedirectToLoginPage();
            context.Response.Redirect("LogIn.aspx");
        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}