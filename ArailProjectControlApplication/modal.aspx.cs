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

    public partial class modal : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void materialsdetails(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("update Materials Set  AdditionalInfo = @AdditionalInfo where ID = (SELECT MAX(ID) FROM Materials)", con);
            cmd.Parameters.AddWithValue("@AdditionalInfo", textarea.Text);
            cmd.ExecuteNonQuery();
            Response.Write("<script>alert('Materials Added Successfully!!')</script>");
            con.Close();
        }
    }
}