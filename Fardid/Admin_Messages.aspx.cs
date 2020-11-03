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
    public partial class Admin_Messages : System.Web.UI.Page
    {
        private Messages_Logic Logic;
        private List<MessageModel> messageModels;
        protected void Page_Load(object sender, EventArgs e)
        {
            Logic = new Messages_Logic();
            messageModels = Logic.GetMessages();

            DataList1.DataSource = messageModels;

        }
    }
}