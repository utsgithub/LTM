using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(ENET.Startup))]
namespace ENET
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
