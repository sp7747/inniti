using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;

public partial class Backend_Default : System.Web.UI.Page
{

    string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.BindPages();
        }
    }
    private void BindPages()
    {
        string query = "SELECT [PageName], [Title], [Mail_Content] FROM dbo.Inniti_backend_Pr";
      
        using (SqlConnection con = new SqlConnection(strConnection))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        rptPages.DataSource = dt;
                        rptPages.DataBind();
                    }
                }
            }
        }
    }
}