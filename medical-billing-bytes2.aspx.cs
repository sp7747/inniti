using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


public partial class medical_billing_bytes2 : System.Web.UI.Page
{
    string strConnection = ConfigurationManager.ConnectionStrings["Strings"].ConnectionString;
    //string ReportID;
    //string ReportName;
    //PagedDataSource _PageDataSource = new PagedDataSource();

    protected void Page_Load(object sender, EventArgs e)
    {
       
        {
            
            {


                SqlConnection con = new SqlConnection(strConnection);
                con.Open();
                SqlDataAdapter adpt = new SqlDataAdapter("select * from   [InfoGraphs]", con);
                DataTable dt = new DataTable();
                adpt.Fill(dt);

                Rep_infograph.DataSource = dt;
                Rep_infograph.DataBind();

                Response.Write(dt.Rows[0][0]);

            }

        }

    }
}