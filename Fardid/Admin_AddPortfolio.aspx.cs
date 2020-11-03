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
    public partial class addportfolio : System.Web.UI.Page
    {
        private AddPortfolio_Logic Logic;
        protected void Page_Load(object sender, EventArgs e)
        {
            Logic = new AddPortfolio_Logic();
            
            if (!IsPostBack && Request["Type"]=="Edit")
            {
                int Id = Convert.ToInt32(Request["Id"]);
                var model =Logic.GetPortfolio(Id);
                TextBox_discription.Text = model.Discription;
                TextBox_BackGround.Value = model.Background_Id.ToString();

                TextBox_Logo.Value = model.Log_Id.ToString();
                TextBox_SEO_D.Text = model.SEO_discription;
                TextBox_SEO_K.Text = model.SEO_Keyword;
                TextBox_Subject.Text = model.Subject;
                if(model.Show==1)
                {
                    CheckBox_Show.Checked=true;
                }

            }

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            var model = new PortfolioModel();
            if (Request["Type"] == "Edit")
            {
                int Id = Convert.ToInt32(Request["Id"]);
                model.PortfolioId = Id;
            }else
            {
                model.PortfolioId = 0;
            }

            model.Discription= TextBox_discription.Text;
            model.Background_Id=Convert.ToInt32(TextBox_BackGround.Value);
            model.Log_Id=Convert.ToInt32(TextBox_Logo.Value);
            model.SEO_discription= TextBox_SEO_D.Text;
            model.SEO_Keyword= TextBox_SEO_K.Text;
            model.Subject= TextBox_Subject.Text;
            if (CheckBox_Show.Checked)
            {
                model.Show = 1;
            }else
            {
                model.Show = 0;
            }

            Logic.AddPorufolio(model);

        }
    }
}