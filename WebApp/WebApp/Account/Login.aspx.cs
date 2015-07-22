using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Web.Configuration;

namespace WebApp.Account
{
    public partial class Login : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void On_LoggedIn(object sender, EventArgs e)
        {
            SqlConnection db = new SqlConnection(WebConfigurationManager.ConnectionStrings["internshipLDSBCConnectionString"].ToString() );
            db.Open();
            SqlCommand cmd = new SqlCommand("SELECT ID FROM COMPANY WHERE ContactEmail = @EMAIL", db);
            
            cmd.Parameters.AddWithValue("@email", Login1.UserName);

            Session["CompanyID"] = cmd.ExecuteScalar();

            db.Close();

            Response.Redirect("/default.aspx");


        }

    }
}