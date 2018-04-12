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
    public partial class AddItems : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();

        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        protected void addItems(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("submititems", con);
            cmd.Parameters.AddWithValue("@ItemName", Items.Text);
            cmd.Parameters.AddWithValue("@SubItems", SubItems.Text);
            cmd.Parameters.AddWithValue("@Category", category.Text);
            cmd.Parameters.AddWithValue("@Division", Division.Text);
            

            cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Write("<script>alert('Items Added Successfully!!')</script>");
            category.Text = "";
            Division.Text = "";
            Items.Text = "";
            SubItems.Text = "";
            con.Close();
        }
    }
}