using DevExpress.Web;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using System;
using System.Collections.Generic;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace ArailProjectControlApplication
{
    public partial class BOQ1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            CloudStorageAccount storageAccount = new CloudStorageAccount(new Microsoft.WindowsAzure.Storage.Auth.StorageCredentials("arailproject", "zSU2JysKO4g0NmCmVSu3vsFUGnvcm8d4WsDhkNgQVVtPCyXfQprTQBWfzh72zu89Hq8vKT6v6XUZpotPTL39CQ=="), true);
            string projectattachments = ConfigurationManager.AppSettings["StorageConnectionString"];
            Microsoft.WindowsAzure.Storage.Blob.CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
            CloudBlobContainer container = blobClient.GetContainerReference("projectattachments");
            container.CreateIfNotExists();
        }
        protected void UploadControl_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string name = e.UploadedFile.FileName;
            string url = GetImageUrl(e.UploadedFile.FileNameInStorage);
            long sizeInKilobytes = e.UploadedFile.ContentLength / 1024;
            string sizeText = sizeInKilobytes.ToString() + " KB";
            e.CallbackData = name + "|" + url + "|" + sizeText;
            Session["url"] = url;
        }
        string GetImageUrl(string fileName)
        {
            AzureFileSystemProvider provider = new AzureFileSystemProvider("");
            provider.AccountName = "arailproject";
            provider.ContainerName = "projectattachments";
            FileManagerFile file = new FileManagerFile(provider, fileName);
            FileManagerFile[] files = new FileManagerFile[] { file };
            return provider.GetDownloadUrl(files);
        }

        protected void ASPxGridView1_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            if (Session["url"] != null)
            {
                e.NewValues["BOQ"] = Session["url"].ToString();
                Session["url"] = string.Empty;
            }
        }
    }
}