using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logics_Layer.Customer;

namespace Fardid
{
    public partial class OurTeam : System.Web.UI.Page
    {
        private CustomerOurTeam_Logic logic;
        protected void Page_Load(object sender, EventArgs e)
        {
            logic = new CustomerOurTeam_Logic();

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if(TextBox1.Text!="")
            {
                string s = logic.AddNewsLetter(TextBox1.Text);
            }
        }
    }
}