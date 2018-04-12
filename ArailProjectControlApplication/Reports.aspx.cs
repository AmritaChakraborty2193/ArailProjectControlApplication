using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Services;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
namespace ArailProjectControlApplication
{
    public partial class Reports : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        public string CodeA;
        public string CodeB;
        public string CodeC;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }
        public void SerializedDataOfChart()
        {
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            SqlCommand comm = new SqlCommand(" SELECT Projects.ProjectName,Materials.ProjectId,count(CODE) as CountCode FROM Materials INNER JOIN Projects ON Materials.ProjectId = Projects.ID where CODE = 'A' AND Projects.ProjectName='" + DropDownList1.Text+"'GROUP by CODE", con);
            SqlDataReader dr = comm.ExecuteReader();
            if (dr.Read())
            {
                CodeA = dr["CountCode"].ToString();

            }
            con.Close(); con.Open();
            SqlCommand comm1 = new SqlCommand(" SELECT Projects.ProjectName,Materials.ProjectId,count(CODE) as CountCode FROM Materials INNER JOIN Projects ON Materials.ProjectId = Projects.ID where CODE = 'B' AND Projects.ProjectName='" + DropDownList1.Text + "'GROUP by CODE", con);
            SqlDataReader dr1 = comm1.ExecuteReader();
            if (dr1.Read())
            {
                CodeB = dr1["CountCode"].ToString();

            }
            con.Close(); con.Open();
            SqlCommand comm2 = new SqlCommand(" SELECT Projects.ProjectName,Materials.ProjectId,count(CODE) as CountCode FROM Materials INNER JOIN Projects ON Materials.ProjectId = Projects.ID where CODE = 'C' AND Projects.ProjectName='" + DropDownList1.Text + "'GROUP by CODE", con);
            SqlDataReader dr2 = comm2.ExecuteReader();
            if (dr2.Read())
            {
                CodeC = dr2["CountCode"].ToString();

            }
            con.Close();
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            SerializedDataOfChart();
        }
    }
}