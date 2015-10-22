﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace WebApp {
    public partial class internshipEntry : System.Web.UI.Page 
    {

        
        protected void Page_Load(object sender, EventArgs e) 
        {
        }

        protected void Submit_Click(object sender, EventArgs e) 
        {

            // Change cunction string to your database. 
            /* Rileys sql path = WIN-H2I8SPBN92E\CS260FIRST
             * Prestons sql path =
             * Sams sql path =
             * Adrians sql path =
            */
            SqlConnection cn = new SqlConnection(@"PRESTONEYRE\SQLEXPRESS; Initial Catalog=internshipLDSBC; User ID=ldsbcUser; Password=ldsbc");
            cn.Open();

            // SQL query.
            SqlCommand cmd = new SqlCommand("INSERT INTO Rating (Com_ID, InternshipName, StudentName, Grade, Comments) VALUES (@Com_ID,@InternshipName,@StudentName,@Grade,@Comments)", cn);
            // Get company ID from session.
            cmd.Parameters.AddWithValue("@Com_ID", 1);
            // Get values from textfields on page.
            cmd.Parameters.AddWithValue("@InternshipName", internshipName.Text);
            cmd.Parameters.AddWithValue("@StudentName", studentName.Text);
            cmd.Parameters.AddWithValue("@Grade", DropDownList1.Text);
            cmd.Parameters.AddWithValue("@Comments", comments.Text);
            cmd.ExecuteNonQuery();

            // Clear fields after submitting.
            internshipName.Text = "";
            studentName.Text = "";
            DropDownList1.Text = "A";
            comments.Text = "";
        }

        protected void internshipName_TextChanged(object sender, EventArgs e) 
        {
        }

        protected void studentName_TextChanged(object sender, EventArgs e) 
        {
        }

        protected void comments_TextChanged(object sender, EventArgs e) 
        {
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e) 
        {
        }

    }
}