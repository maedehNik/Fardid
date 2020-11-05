using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logics_Layer.Admin;
using Logics_Layer.Models;

namespace Fardid
{
    public partial class Admin_PicSetting : System.Web.UI.Page
    {
        private PicsSetting_Logic logic;
        public PicsSettingModel Models;
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new PicsSetting_Logic();
            Models = logic.GetPicsSetting();
        }
    }
}