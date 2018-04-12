using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using DevExpress.Web;
using System.Data.SqlClient;

namespace ArailProjectControlApplication
{
    
    public partial class Materials : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
              if (Request.QueryString["ID"] != null)
                ProjectId.Text = Request.QueryString["ID"];
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            string query = "select ProjectName from Projects WHERE ID="+ProjectId.Text;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                ProjectName.Text = reader["ProjectName"].ToString();
            }
        }
        protected void ddItems_Init(object sender, EventArgs e)
        {
            DropDownList control = (DropDownList)sender;
            System.Diagnostics.Debug.WriteLine(control.UniqueID); // It can be ASPxPanel1$ASPxComboBox1, ASPxGridView1$Title$ASPxComboBox1, etc.
        }
        protected void ddSuppliers_Init(object sender, EventArgs e)
        {
            DropDownList control = (DropDownList)sender;
            System.Diagnostics.Debug.WriteLine(control.UniqueID); // It can be ASPxPanel1$ASPxComboBox1, ASPxGridView1$Title$ASPxComboBox1, etc.
        }
        protected void ddCOO_Init(object sender, EventArgs e)
        {
            DropDownList control = (DropDownList)sender;
            System.Diagnostics.Debug.WriteLine(control.UniqueID); // It can be ASPxPanel1$ASPxComboBox1, ASPxGridView1$Title$ASPxComboBox1, etc.
        }
        protected void ddCPName_Init(object sender, EventArgs e)
        {
            DropDownList control = (DropDownList)sender;
            System.Diagnostics.Debug.WriteLine(control.UniqueID); // It can be ASPxPanel1$ASPxComboBox1, ASPxGridView1$Title$ASPxComboBox1, etc.
        }
        protected void ddCPNumb_Init(object sender, EventArgs e)
        {
            DropDownList control = (DropDownList)sender;
            System.Diagnostics.Debug.WriteLine(control.UniqueID); // It can be ASPxPanel1$ASPxComboBox1, ASPxGridView1$Title$ASPxComboBox1, etc.
        }
    }
}