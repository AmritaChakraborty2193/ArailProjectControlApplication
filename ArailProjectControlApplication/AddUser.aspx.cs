using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;

namespace ArailProjectControlApplication
{
    public partial class AddUser : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            
        }
        protected void adduser(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("submitusers", con);
            cmd.Parameters.AddWithValue("@FirstName", First.Text);
            cmd.Parameters.AddWithValue("@LastName", Last.Text);
            cmd.Parameters.AddWithValue("@Name", Username.Text);
            cmd.Parameters.AddWithValue("@Password", Retype.Text);
            cmd.Parameters.AddWithValue("@Designation", Department.Text);
            cmd.Parameters.AddWithValue("@Department", DropDownList1.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Write("<script>alert('User Added Successfully!!')</script>");
            First.Text = "";
            Last.Text = "";
            Username.Text = "";
            Password.Text = "";
            Retype.Text = "";
            Department.Text = "";
            DropDownList1.Text = "";
            con.Close();
        }
    }
}