using Logics_Layer.Other;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Logics_Layer.EmailModule;
using System.Net.Mail;

namespace Fardid
{
    public partial class Test : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        //    SendEmail sendEmail = new SendEmail("info@fardid.co", "Fardid@Pass1234");

        //    Response.Write(sendEmail.Send_Email("Helloooo","Heloooo","fatemeh.nickaeen@gmail.com"));


        SmtpClient smtpClient = new SmtpClient("info@fardid.co", 25);

        smtpClient.Credentials = new System.Net.NetworkCredential("admin_fardid@fardid.co", "Fardid@Pass1234");
        smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;

            MailMessage mailMessage = new MailMessage("admin_fardid@fardid.co", "fatemeh.nickaeen@gmail.com");
        mailMessage.Subject = "Hellooo";
        mailMessage.Body = "Helloooo";
            try
            {
                smtpClient.Send(mailMessage);
                Response.Write("Message sent");
            }
            catch (Exception ex)
            {
                Response.Write(ex.ToString());
            }
        }
}
}