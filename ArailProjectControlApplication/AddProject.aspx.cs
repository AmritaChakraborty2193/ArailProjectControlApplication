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
    public partial class AddProject : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addproject(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("submitprojects", con);
            cmd.Parameters.AddWithValue("@ProjectName", ProjectName.Text);
            cmd.Parameters.AddWithValue("@Client", Client.Text);
            cmd.Parameters.AddWithValue("@Consultant", consultant.Text);
            cmd.Parameters.AddWithValue("@ProjectStartDate", startdate.Text);
            cmd.Parameters.AddWithValue("@ProjectEndDate", enddate.Text);
            cmd.Parameters.AddWithValue("@owner", owner.Text);
            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Project Added Successfully!!')</script>");
            ProjectName.Text = "";
            Client.Text = "";
            consultant.Text = "";
            startdate.Text = "";
            enddate.Text = "";
            owner.Text = "";
            con.Close();
        }
    }
}