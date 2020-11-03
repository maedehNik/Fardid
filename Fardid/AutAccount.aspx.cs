using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Fardid
{
    public partial class AutAccount : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            Session["Admin_Id"] = "";
            Session["Admin_Name"] = "";
            Session["Admin_Family"] = "";
            Session["Admin_Email"] = "";
            Session["Admin_Phone"] = "";
            Session["Admin_Pic"] = "";
            Response.Redirect("/AdminLogin.aspx");
        }
    }
}