using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace DinersRealEstateManagement
{
    public partial class contract : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                string id = Request.QueryString["id"];
                int index = 1;
                if (!String.IsNullOrEmpty(id)) {
                    index = int.Parse(id);
                }
                switch (index) 
                {
                    case 1:
                        signup.Visible = true;
                        break;
                    case 2:
                        serves.Visible = true;
                        break;
                    case 3:
                        personal.Visible = true;
                        break;
                }
            }
        }
    }
}