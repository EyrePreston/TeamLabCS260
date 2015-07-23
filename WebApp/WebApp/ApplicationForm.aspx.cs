using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net.Mail;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApp
{

    public partial class ApplicationForm : System.Web.UI.Page
    {
        //private static string indexValue;
        private static int indexValue;
        private int companyID;
        

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection connection = new SqlConnection(WebConfigurationManager.ConnectionStrings["internshipLDSBCConnectionString"].ToString());
            connection.Open();
            SqlCommand command = new SqlCommand("SELECT * FROM [Job] WHERE ID=" + indexValue + "", connection);
            SqlDataReader reader = command.ExecuteReader();

            reader.Read();
            lblJobTitle.Text = reader["JobTitle"].ToString();
            lblPosition.Text = reader["Postion"].ToString();
            companyID = (int) reader["CompanyID"];
            connection.Close();

            connection.Open();
            SqlCommand getInfoFromCompany = new SqlCommand("SELECT * FROM [Company] WHERE ID=" + companyID, connection);
            SqlDataReader reader2 = getInfoFromCompany.ExecuteReader();

            reader2.Read();
            lblCompany.Text = reader2["CompanyName"].ToString();
            connection.Close();


        }

        protected void btnClear_Click(object sender, EventArgs e)
        {
            // Clean fields.
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            fileResume.Dispose();
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {

            MailMessage mail = new MailMessage();
            mail.Body = "A student is interested in the following internship:" +
                "\nStudent's Name: " + txtName.Text +
                "\nStudent's Email: " + txtEmail.Text +
                "\nJob Tile: " + lblJobTitle.Text +
                "\nCompany: " + lblCompany.Text +
                "\nPlease start the evaluation process";
            
            if(this.fileResume.HasFile)
            {

                mail.Attachments.Add(new Attachment(fileResume.PostedFile.InputStream, fileResume.FileName));

            }

            mail.Subject = "Test Subject";
            mail.From = new MailAddress("adrian.lovi.39@gmail.com");
            mail.To.Add("adrian.lovi.39@gmail.com");
            SmtpClient client = new SmtpClient("smtp.gmail.com", 587);
            client.Credentials = new System.Net.NetworkCredential("adrian.lovi.39@gmail.com", "Jalv1304");
            client.EnableSsl = true;
            client.Send(mail);

            // Clean fields.
            txtName.Text = "";
            txtEmail.Text = "";
            txtPhone.Text = "";
            fileResume.Dispose();

        }

        public static void setValue(int value)
        {
            indexValue = value;
        }

    }

}