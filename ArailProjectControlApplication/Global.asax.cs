
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Optimization;
using System.Web.Routing;
using System.Web.Security;
using System.Web.SessionState;
using Microsoft.WindowsAzure.Storage;
using Microsoft.WindowsAzure.Storage.Auth;
using Microsoft.WindowsAzure.Storage.Blob;
using DevExpress.Web;
using DevExpress.Office.Crypto;

namespace ArailProjectControlApplication
{
    public class Global : HttpApplication
    {
        void Application_Start(object sender, EventArgs e)
        {
            RegisterAccounts();
            // Code that runs on application startup
            RouteConfig.RegisterRoutes(RouteTable.Routes);
            BundleConfig.RegisterBundles(BundleTable.Bundles);
        }
        void RegisterAccounts()
        {
            AccountManager.RegisterAzure("arailproject", "arailproject", "zSU2JysKO4g0NmCmVSu3vsFUGnvcm8d4WsDhkNgQVVtPCyXfQprTQBWfzh72zu89Hq8vKT6v6XUZpotPTL39CQ==");
        }
    }
}