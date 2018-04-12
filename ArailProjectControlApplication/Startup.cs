using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ArailProjectControlApplication.Startup))]
namespace ArailProjectControlApplication
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
