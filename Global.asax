<%@ Application Language="C#" %>
<%@ Import Namespace="innity_one" %>
<%@ Import Namespace="System.Web.Optimization" %>
<%@ Import Namespace="System.Web.Routing" %>

<script runat="server">

    void Application_Start(object sender, EventArgs e)
    {
        // Code that runs on application startup
        //BundleConfig.RegisterBundles(BundleTable.Bundles);
        //AuthConfig.RegisterOpenAuth();
        //RouteConfig.RegisterRoutes(RouteTable.Routes);
        RegisterRoutes(RouteTable.Routes);
         
    }
    
    void Application_End(object sender, EventArgs e)
    {
        //  Code that runs on application shutdown

    }

    void Application_Error(object sender, EventArgs e)
    {
        // Code that runs when an unhandled error occurs

    }

   

    static void RegisterRoutes(RouteCollection routes)
    {
        routes.MapPageRoute("speciality", "speciality/{PageName}.html", "~/DynamicPage.aspx");
        routes.MapPageRoute("article", "article/{PageName}.html", "~/DynamicPage.aspx");
        routes.MapPageRoute("Press-Release", "Press-Release/{PageName}.html", "~/Backend/DynamicPage.aspx");
        routes.MapPageRoute("Emr", "Emr/{PageName}.html", "~/Backend/DynamicPage.aspx");
    }   
</script>
