using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Blob;
using System.Configuration;
using DevExpress.Web;
using System.IO;

namespace ArailProjectControlApplication
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            /*string connString = ConfigurationManager.ConnectionStrings["AzureStorageAccount"].ConnectionString;
            string localFolder = ConfigurationManager.AppSettings["sourceFolder"];
            string destContainer = ConfigurationManager.AppSettings["destContainer"];
            CloudStorageAccount sa = CloudStorageAccount.Parse(connString);
            CloudBlobClient bc = sa.CreateCloudBlobClient();
            CloudBlobContainer container = bc.GetContainerReference(destContainer);
            container.CreateIfNotExists();
            string[] fileEntries = Directory.GetFiles(localFolder);
            foreach (string filePath in fileEntries)
            {
                string key = DateTime.UtcNow.ToString("yyyy-MM-dd-HH:mm:ss") + "-" + Path.GetFileName(filePath);
                UploadBlob(container, key, filePath, true);
            }*/
        }
       /* private void UploadBlob(CloudBlobContainer container, string key, string fileName, bool deleteAfter)
        {
            Response.Write("uploading file to container: key= " + key + "sourcefile : filename= " + fileName);
            CloudBlockBlob b = container.GetBlockBlobReference(key);
            using (var fs = System.IO.File.Open(fileName, FileMode.Open, FileAccess.Read, FileShare.None))
            {
                b.UploadFromStream(fs);
            }
            if (deleteAfter)
                File.Delete(fileName);
        }
        */
        protected void Button1_Click(object sender, EventArgs e)
        {
            string folderPath = Server.MapPath("~/Img/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists. Create it.
                Directory.CreateDirectory(folderPath);
            }

            //Save the File to the Directory (Folder).
            FileUpload1.SaveAs(folderPath + Path.GetFileName(FileUpload1.FileName));
        }

        protected void ASPxUploadControl1_FileUploadComplete(object sender, FileUploadCompleteEventArgs e)
        {
            string folderPath = Server.MapPath("~/Img/");

            //Check whether Directory (Folder) exists.
            if (!Directory.Exists(folderPath))
            {
                //If Directory (Folder) does not exists. Create it.
                Directory.CreateDirectory(folderPath);
            }
            if (e.IsValid)
            {
                e.UploadedFile.SaveAs(MapPath("Img/" + e.UploadedFile.FileName));

            }
        }
    }
}