using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net.Mail;

namespace WebApp
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ListView1_SelectedIndexChanged(object sender, EventArgs e)
        {

            Panel1.Visible = false;
            Panel2.Visible = true;

            

            







            utilities.sendEmail("prestoneyre12@gmail.com", "prestoneyre12@gmail.com", "Preston", "Test", "Test", "prestoneyre12@gmail.com", "Minn3s0ta2010", "smtp.gmail.com", 465);
            
        }
    }

    public class utilities
    {
        public static void sendEmail(string to, string fromEmail, string fromName, string subject, string body, string username, string password, string ip, int port)
        {
            try
            {

                MailMessage mail = new MailMessage();

                //set the addresses
                mail.From = new MailAddress(fromEmail, fromName);
                mail.To.Add(to);

                //set the content
                mail.Subject = subject;
                mail.Body = body;
                mail.IsBodyHtml = true;

                //test
                //send the message
                SmtpClient smtp = new SmtpClient(ip, port);
                smtp.Credentials = new System.Net.NetworkCredential(username, password);
                smtp.Send(mail);

                //WriteToEventLog(System.Configuration.ConfigurationManager.AppSettings["smtpAddress"] + " " + Convert.ToInt32(System.Configuration.ConfigurationManager.AppSettings["smtpPort"]) +" "+ fromEmail+" "+ fromName);
            }
            catch (Exception ex)
            {
                throw new EmailSentException(ex.Message);
            }

        }

        [Serializable()]
        public class EmailSentException : System.Exception
        {
            public EmailSentException() : base() { }
            public EmailSentException(string message) : base(message) { }
            public EmailSentException(string message, System.Exception inner) : base(message, inner) { }

            // A constructor is needed for serialization when an 
            // exception propagates from a remoting server to the client.  
            protected EmailSentException(System.Runtime.Serialization.SerializationInfo info,
                System.Runtime.Serialization.StreamingContext context) { }
        }
    }
}