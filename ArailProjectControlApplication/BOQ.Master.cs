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
    public partial class BOQ : System.Web.UI.MasterPage
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand cmd = new SqlCommand("Select count(BOQ) FROM Materials WHERE BOQ IS NULL", con);
            Int32 count = (Int32)cmd.ExecuteScalar();
            con.Close();
            
        }
    }
}