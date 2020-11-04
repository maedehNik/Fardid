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
    public partial class SaveSliderPics : System.Web.UI.Page
    {
        private SliderSetting_Logic logic;
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new SliderSetting_Logic();
            if (Request["Pics"] != null)
            {
                var s = Request["Pics"].Split(',');
                List<int> pics = new List<int>();
                for (int i = 0; i < s.Length; i++)
                {
                    pics.Add(Convert.ToInt32(s[i]));
                }

                Response.Write(logic.AddPic_Sliders(pics));
            }
        }
    }
}