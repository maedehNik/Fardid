using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logics_Layer.Models;
using Logics_Layer.Admin;

namespace Fardid
{
    public partial class Admin_MainVideo : System.Web.UI.Page
    {
        private MainVideo_Logic Logic;
        protected void Page_Load(object sender, EventArgs e)
        {
            Logic = new MainVideo_Logic();
            if(!IsPostBack)
            {
                var model = Logic.GetMainVideo();
                TextBox_VideoLink.Text = model.VideoLink;
                TextBox_VideoSub1.Text = model.VideoSub1;
                TextBox_VideoSub2.Text = model.VideoSub2;
                HiddenField_VideoBack.Value = model.MainVideoBackground_PicId.ToString();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var model = new MainVideoModel();

            model.VideoLink= TextBox_VideoLink.Text;
            model.VideoSub1= TextBox_VideoSub1.Text;
            model.VideoSub2= TextBox_VideoSub2.Text;
            model.MainVideoBackground_PicId=Convert.ToInt32(HiddenField_VideoBack.Value);

            Logic.UpdateMainVideo(model);
        }
    }
}