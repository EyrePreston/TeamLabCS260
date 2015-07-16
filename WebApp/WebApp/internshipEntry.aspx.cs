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
            // Change cunction string to your database.
            SqlConnection cn = new SqlConnection(@"Data Source=WIN-H2I8SPBN92E\CS260FIRST;Initial Catalog=internshipLDSBC;Persist Security Info=True;User ID=internUser;Password=ldsbc");
            cn.Open();

            SqlCommand cmd = new SqlCommand("INSERT INTO Rating (InternshipName, StudentName, Grade, Comments) VALUES (@InternshipName,@StudentName,@Grade,@Comments)", cn);

            cmd.Parameters.AddWithValue("@InternshipName", internshipName.Text);
            cmd.Parameters.AddWithValue("@StudentName", studentName.Text);
            cmd.Parameters.AddWithValue("@Grade", gradeBox.Text);
            cmd.Parameters.AddWithValue("@Comments", feedback.Text);
            cmd.ExecuteNonQuery();

        }

        protected void internshipName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void studentName_TextChanged(object sender, EventArgs e)
        {

        }

        protected void gradeBox_TextChanged(object sender, EventArgs e)
        {

        }

        protected void feedback_TextChanged(object sender, EventArgs e)
        {

        }

    }
}