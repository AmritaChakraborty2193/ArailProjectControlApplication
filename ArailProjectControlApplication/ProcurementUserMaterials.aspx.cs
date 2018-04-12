using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;
using System.IO;
using Microsoft.WindowsAzure.Storage.File;
using DevExpress.Web;

namespace ArailProjectControlApplication
{
    public partial class ProcurementUserMaterials : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {
            /*CloudStorageAccount storageAccount = CloudStorageAccount.Parse(ConfigurationManager.AppSettings["StorageConnectionString"]);
                        string projectcontrolattachments = ConfigurationManager.AppSettings["projectcontrolattachments"];
                        CloudBlobClient bc = storageAccount.CreateCloudBlobClient();
                        CloudBlobContainer containername = bc.GetContainerReference(projectcontrolattachments);
                        containername.CreateIfNotExists();
                        containername.SetPermissions(new BlobContainerPermissions { PublicAccess = BlobContainerPublicAccessType.Blob });
                        CloudBlockBlob blockBlob = containername.GetBlockBlobReference("name");
                        */
            CloudStorageAccount storageAccount = new CloudStorageAccount(new Microsoft.WindowsAzure.Storage.Auth.StorageCredentials("arailproject", "zSU2JysKO4g0NmCmVSu3vsFUGnvcm8d4WsDhkNgQVVtPCyXfQprTQBWfzh72zu89Hq8vKT6v6XUZpotPTL39CQ=="), true);
            string projectattachments = ConfigurationManager.AppSettings["StorageConnectionString"];
            CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
            CloudBlobContainer container = blobClient.GetContainerReference("projectattachments");
            container.CreateIfNotExists();

            if (Request.QueryString["ID"] != null)
                ProjectId.Text = Request.QueryString["ID"];
            SqlConnection con = new SqlConnection(connect);
            con.Open();
            string query = "select ProjectName from Projects WHERE ID=" + ProjectId.Text;
            SqlCommand cmd = new SqlCommand(query, con);
            SqlDataReader reader = cmd.ExecuteReader();
            if (reader.Read())
            {
                ProjectName.Text = reader["ProjectName"].ToString();
            }

        }
        protected void productsGrid_DataSelect(object sender, EventArgs e)
        {
            Session["ID"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }
    }
}