using MimeKit;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using SmtpClient = MailKit.Net.Smtp.SmtpClient;

namespace Logics_Layer.EmailModule
{
    public class SendEmail
    {
        public string _EmailFrom { get; set; }
        public string _Password { get; set; }

        public SendEmail( string username, string password)
        {
            _EmailFrom = username;
            _Password = password;
        }


        public string Send_Email(string sub, string body, string mailAddress)
        {
            var mimeMessage = new MimeMessage();
            mimeMessage.From.Add(new MailboxAddress("panda", _EmailFrom));
            mimeMessage.To.Add(new MailboxAddress
            (
                mailAddress
            ));
            mimeMessage.Subject = sub; //Subject  
            mimeMessage.Body = new TextPart("plain")
            {
                Text = body
            };

            using (var client = new SmtpClient())
            {
                client.Connect("info@fardid.co", 587, false);
                client.Authenticate(
                    _EmailFrom,
                    _Password
                );
                client.SendAsync(mimeMessage);
                client.DisconnectAsync(true);
                return "The mail has been sent successfully !!";
                
            }

        }

    }
}
