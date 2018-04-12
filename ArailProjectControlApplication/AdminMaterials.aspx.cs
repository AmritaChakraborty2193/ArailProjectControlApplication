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
using System;

namespace ArailProjectControlApplication
{
    
    public partial class AdminMaterials : System.Web.UI.Page
    {
        string connect = ConfigurationManager.ConnectionStrings["connect"].ToString();
        protected void Page_Load(object sender, EventArgs e)
        {

            CloudStorageAccount storageAccount = new CloudStorageAccount(new Microsoft.WindowsAzure.Storage.Auth.StorageCredentials("arailproject", "zSU2JysKO4g0NmCmVSu3vsFUGnvcm8d4WsDhkNgQVVtPCyXfQprTQBWfzh72zu89Hq8vKT6v6XUZpotPTL39CQ=="), true);
            string projectattachments = ConfigurationManager.AppSettings["StorageConnectionString"];
            Microsoft.WindowsAzure.Storage.Blob.CloudBlobClient blobClient = storageAccount.CreateCloudBlobClient();
            CloudBlobContainer container = blobClient.GetContainerReference("projectattachments");
            container.CreateIfNotExists();
        }
        protected void UploadControl1_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string name = e.UploadedFile.FileName;
            string url1 = GetImageUrl(e.UploadedFile.FileNameInStorage);
            long sizeInKilobytes = e.UploadedFile.ContentLength / 1024;
            string sizeText = sizeInKilobytes.ToString() + " KB";
            e.CallbackData = name + "|" + url1 + "|" + sizeText;
            Session["url1"] = url1;
        }
        protected void UploadControl2_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string name = e.UploadedFile.FileName;
            string url2 = GetImageUrl(e.UploadedFile.FileNameInStorage);
            long sizeInKilobytes = e.UploadedFile.ContentLength / 1024;
            string sizeText = sizeInKilobytes.ToString() + " KB";
            e.CallbackData = name + "|" + url2 + "|" + sizeText;
            Session["url2"] = url2;
        }
        protected void UploadControl3_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string name = e.UploadedFile.FileName;
            string url3 = GetImageUrl(e.UploadedFile.FileNameInStorage);
            long sizeInKilobytes = e.UploadedFile.ContentLength / 1024;
            string sizeText = sizeInKilobytes.ToString() + " KB";
            e.CallbackData = name + "|" + url3 + "|" + sizeText;
            Session["url3"] = url3;
        }
        protected void UploadControl4_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string name = e.UploadedFile.FileName;
            string url4 = GetImageUrl(e.UploadedFile.FileNameInStorage);
            long sizeInKilobytes = e.UploadedFile.ContentLength / 1024;
            string sizeText = sizeInKilobytes.ToString() + " KB";
            e.CallbackData = name + "|" + url4 + "|" + sizeText;
            Session["url4"] = url4;
        }
        protected void UploadControl5_FileUploadComplete(object sender, DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            string name = e.UploadedFile.FileName;
            string url5 = GetImageUrl(e.UploadedFile.FileNameInStorage);
            long sizeInKilobytes = e.UploadedFile.ContentLength / 1024;
            string sizeText = sizeInKilobytes.ToString() + " KB";
            e.CallbackData = name + "|" + url5 + "|" + sizeText;
            Session["url5"] = url5;
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

        protected void ASPxGridView4_RowUpdating(object sender, DevExpress.Web.Data.ASPxDataUpdatingEventArgs e)
        {
            if (Session["url1"] != null)
            {
                e.NewValues["BOQ"] = Session["url1"].ToString();
                Session["url1"] = string.Empty;
            }
            if (Session["url2"] != null)
            {
                e.NewValues["DrawingAttachments"] = Session["url2"].ToString();
                Session["url2"] = string.Empty;
            }
            if (Session["url3"] != null)
            {
                e.NewValues["CRSReceivedAttachment"] = Session["url3"].ToString();
                Session["url3"] = string.Empty;
            }
            if (Session["url4"] != null)
            {
                e.NewValues["SubmittalSentToClient"] = Session["url4"].ToString();
                Session["url4"] = string.Empty;
            }
            if (Session["url5"] != null)
            {
                e.NewValues["SubmittalAttached"] = Session["url5"].ToString();
                Session["url5"] = string.Empty;
            }
        }

    }
}