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
    public partial class Admin_Profile : System.Web.UI.Page
    {
        private Portfolio_Logic Logic;
        public List<PortfolioListModel> Models;
        protected void Page_Load(object sender, EventArgs e)
        {
            Logic = new Portfolio_Logic();
            Models = Logic.GetPortfolio();
        }
    }
}