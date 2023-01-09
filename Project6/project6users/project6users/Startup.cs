using Microsoft.Owin;
using Owin;

[assembly: OwinStartupAttribute(typeof(project6users.Startup))]
namespace project6users
{
    public partial class Startup {
        public void Configuration(IAppBuilder app) {
            ConfigureAuth(app);
        }
    }
}
