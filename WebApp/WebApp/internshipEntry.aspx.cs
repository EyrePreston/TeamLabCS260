using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApp
{
    public partial class internshipEntry : System.Web.UI.Page
    {

        
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void Submit_Click(object sender, EventArgs e)
        {
            SqlConnection cn = new SqlConnection(@"Data Source=PRESTONEYRE\SQLEXPRESS;Initial Catalog=internshipLDSBC;Persist Security Info=True;User ID=internUser;Password=ldsbc");
            cn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO Company (CompanyName, Address1, Address2, PhoneNumber, Description) VALUES (@CompanyName,@Address 1,@Address 2,@Phone Number,@Description)", cn);

            cmd.Parameters.Add("@Company Name", TextBox1.Text);
            cmd.Parameters.Add("@Address 1", address1.Text);
            cmd.Parameters.Add("@Address 2", address2.Text);
            cmd.Parameters.Add("@Phone Number", phoneNumber.Text);
            cmd.Parameters.Add("@Description", descrition_textbox.Text);
            cmd.ExecuteNonQuery();

        }

        protected void address1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void secondAddress_TextChanged(object sender, EventArgs e)
        {

        }

        protected void phoneNumber_TextChanged(object sender, EventArgs e)
        {

        }

        protected void descrition_textbox_TextChanged(object sender, EventArgs e)
        {

        }
    }
}