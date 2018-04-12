using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;
using System.IO;
namespace ArailProjectControlApplication
{
    public partial class BOQNotify : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void ASPxUploadControl1_FileUploadComplete(object sender,
DevExpress.Web.FileUploadCompleteEventArgs e)
        {
            if (e.IsValid)
            {
                e.UploadedFile.SaveAs(MapPath("Attachments/" + e.UploadedFile.FileName));
            }
        }
    }
}