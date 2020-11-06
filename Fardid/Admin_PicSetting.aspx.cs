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

        protected void Button1_Click(object sender, EventArgs e)
        {
            var model = new PicsSettingModel();
            model.FoIcon_Id = Convert.ToInt32(HiddenField_FoIconId.Value);
            model.FooterLogo_Id = Convert.ToInt32(HiddenField_FooterLogoId.Value);
            model.MainLogo_Id = Convert.ToInt32(HiddenFieldMainLogoId.Value);
            model.MenuLogo_Id = Convert.ToInt32(HiddenField_MenuLogoId.Value);
            model.VideoLogo_Id = Convert.ToInt32(HiddenField_VideoLogoId.Value);

            logic.UpdatePicsSetting(model);
        }
    }
}