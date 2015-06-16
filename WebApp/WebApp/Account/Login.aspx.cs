using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.AspNet.Membership.OpenAuth;
using System.Data.SqlClient;
using System.Data;

namespace WebApp.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
<<<<<<< HEAD


        
=======

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection("Data Source=EQUIPO-ADRIAN;Initial Catalog=internshipLDSBC;Integrated Security=True");
            cn.Open();

            DataTable dt = new DataTable();
            SqlDataAdapter sda = new SqlDataAdapter("SELECT * FROM aspnet_Membership WHERE Email = @Email AND Password = @Password", cn);

            using (cn) 
            {
                sda.SelectCommand.Parameters.AddWithValue("@Email", this.txtEmail.Text);
                sda.SelectCommand.Parameters.AddWithValue("@Password", this.txtPassword.Text);

                sda.Fill(dt);

                if( dt.Rows.Count == 0)
                {
                    lblConfirmation.Text = "User or Password not valid";
                    return;
                }

                lblConfirmation.Text = "Welcome " + txtEmail.Text;
            }
        }
>>>>>>> origin/master
    }
}