using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logics_Layer.Admin;
using Logics_Layer.Models;


namespace Fardid.Admin_Ajax
{
    public partial class UpdateTeamMember : System.Web.UI.Page
    {
        private OurTeam_Logic logic;
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new OurTeam_Logic();
            if (Request["picId"] != null && Request["Name"] != null && Request["Subject"] != null)
            {

                var model = new OurTeamModel()
                {
                    T_Id = 0,
                    deleted = 0,
                    PicId = Convert.ToInt32(Request["picId"]),
                    Name = Request["Name"],
                    Job = Request["Subject"],
                    Pic_Path = ""
                };

                Response.Write(logic.AddMember(model));
            }
        }
    }
}