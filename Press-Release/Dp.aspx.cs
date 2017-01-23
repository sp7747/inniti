using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
public partial class Press_prelease_Dp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {
            this.PopulatePage();
        }

    }
    private void PopulatePage()
    {
        string pageName = this.Page.RouteData.Values["PageName"].ToString();
        string query = "SELECT [Title], [Mail_Content] FROM  dbo.Inniti_backend_Pr WHERE [PageName] = @PageName";
        string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnection))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@PageName", pageName);
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        lblTitle.Text = dt.Rows[0]["Title"].ToString();
                        lblContent.Text = dt.Rows[0]["Mail_Content"].ToString();
                    }
                }
            }
        }
    }
}