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
    public partial class AddSupplier : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
    protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void addsupplier(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("submitsuppliers", con);
      
            cmd.Parameters.AddWithValue("@SupplierName", suppliername.Text);
            cmd.Parameters.AddWithValue("@Division", division.Text);
            cmd.Parameters.AddWithValue("@CountryOfOrigin", country.Text);
            cmd.Parameters.AddWithValue("@ContactPersonName", contactperson.Text);
            cmd.Parameters.AddWithValue("@ContactPersonNumber", contactno.Text);
             cmd.CommandType = CommandType.StoredProcedure;
            cmd.ExecuteNonQuery();
            cmd.Dispose();
            Response.Write("<script>alert('Supplier Added Successfully!!')</script>");         
            suppliername.Text = "";
            division.Text = "";
            country.Text = "";
            contactperson.Text = "";
            contactno.Text = "";
            con.Close();
        }
    }
}