using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Xml;

using System.Data.OleDb;
using System.IO;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;

public partial class quetions : System.Web.UI.Page
{
    SqlConnection mSqlCon = null;
    SqlCommand mSqlcmd = null;
    SqlDataAdapter mSqlDa = null;
    DataSet Dset = null;
    SqlDataReader mSqlDr = null;
    string strConnection;
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    //protected void btnImport_Click(object sender, EventArgs e)
    //{
    //    this.strConnection = ConfigurationManager.ConnectionStrings["Strings"].ConnectionString;
    //    string connString = ConfigurationManager.ConnectionStrings["Uploadexcel"].ConnectionString;
    //    //string connString = "";
    //    string strFileType = Path.GetExtension(fileuploadExcel.FileName).ToLower();
    //    string path = fileuploadExcel.PostedFile.FileName;
    //    //Connection String to Excel Workbook
    //    if (strFileType.Trim() == ".xls")
    //    {
    //        connString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + path + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\"";
    //    }
    //    else if (strFileType.Trim() == ".xlsx")
    //    {
    //        connString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + path + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
    //    }
    //    string query = "SELECT [ID] FROM [Sheet1$]";
    //    OleDbConnection conn = new OleDbConnection(connString);


    //    if (conn.State == System.Data.ConnectionState.Closed)
    //    {
    //        conn.Open();
    //    }
    //    OleDbCommand cmd = new OleDbCommand(query, conn);
    //    OleDbDataAdapter da = new OleDbDataAdapter(cmd);


    //    //if (conn.State == ConnectionState.Closed)
    //    //    conn.Open();
    //    //OleDbCommand cmd = new OleDbCommand(query, conn);
    //    //OleDbDataAdapter da = new OleDbDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    grvExcelData.DataSource = ds.Tables[0];
    //    grvExcelData.DataBind();
    //    da.Dispose();
    //    conn.Close();
    //    conn.Dispose();
    //}


    protected void btnSend_Click(object sender, EventArgs e)
    {

        string conString = ConfigurationManager.ConnectionStrings["Uploadexcel"].ConnectionString;
        //mSqlCon = new SqlConnection(this.strConnection);

        this.strConnection = ConfigurationManager.ConnectionStrings["Strings"].ConnectionString;
        //string connString = "";
        //string strFileType = Path.GetExtension(fileuploadExcel.FileName).ToLower();
        //string path = fileuploadExcel.PostedFile.FileName;

        var applicationDirectory = System.Web.Hosting.HostingEnvironment.ApplicationPhysicalPath;
        string fileName = Path.Combine(Server.MapPath("~/HomeSearch/"), Guid.NewGuid().ToString() + Path.GetExtension(fileuploadExcel.FileName));
        fileuploadExcel.SaveAs(fileName);

        //string conString = "";
        string ext = Path.GetExtension(fileuploadExcel.FileName);
        if (ext.ToLower() == ".xls")
        {
            conString = "Provider=Microsoft.Jet.OLEDB.4.0;Data Source=" + fileName + ";Extended Properties=\"Excel 8.0;HDR=Yes;IMEX=2\""; ;
        }
        else if (ext.ToLower() == ".xlsx")
        {
            conString = "Provider=Microsoft.ACE.OLEDB.12.0;Data Source=" + fileName + ";Extended Properties=\"Excel 12.0;HDR=Yes;IMEX=2\"";
        }

        string query = "Select [QuestionCategoryID],[AnswerID],[Description],[IsActive] from [dataGridView1_Data$]";
        OleDbConnection con = new OleDbConnection(conString);
        if (con.State == System.Data.ConnectionState.Closed)
        {
            con.Open();
        }
        OleDbCommand cmd = new OleDbCommand(query, con);
        OleDbDataAdapter da = new OleDbDataAdapter(cmd);

        DataSet ds = new DataSet();
        da.Fill(ds);
        da.Dispose();
        con.Close();
        con.Dispose();

        foreach (DataRow dr in ds.Tables[0].Rows)
        {
            //var uniqueId = dr["Patient Name"].ToString() + dr["Date of service"].ToString() + DosMonth + dr["CPT"].ToString() + dr["Insurance Name"].ToString() + dr["tempsequense"].ToString();


            //int did = Convert.ToInt32(dr["id"].ToString());
            var QuestionCategoryID = dr["QuestionCategoryID"].ToString();
            var AnswerID = dr["AnswerID"].ToString();
            var Description = dr["Description"].ToString();
            var IsActive = dr["IsActive"].ToString();

            //var ssss = did;

            Dset = new DataSet();
            string strResult = null;

            using (mSqlCon = new SqlConnection(this.strConnection))
            {
                mSqlCon.Open();
                using (mSqlcmd = new SqlCommand())
                {
                    mSqlcmd.Connection = mSqlCon;
                    // mSqlcmd.CommandText = "proc_Back_Category";
                    mSqlcmd.CommandText = "backend_quetion";
                    mSqlcmd.CommandType = CommandType.StoredProcedure;
                    mSqlcmd.Parameters.Add("@QuestionCategoryID", SqlDbType.NVarChar).Value = QuestionCategoryID;
                    mSqlcmd.Parameters.Add("@AnswerID", SqlDbType.NVarChar).Value = AnswerID;
                    mSqlcmd.Parameters.Add("@Description", SqlDbType.NVarChar).Value = Description;
                    mSqlcmd.Parameters.Add("@IsActive", SqlDbType.NVarChar).Value = IsActive;
                    //mSqlcmd.Parameters.Add("@infograph_date", SqlDbType.Date).Value = DateTime.Now;
                    //mSqlcmd.Parameters.Add("@infograph_keyword", SqlDbType.NVarChar).Value = this._infograph_keyword;

                    try
                    {


                        mSqlDr = mSqlcmd.ExecuteReader();

                        string strOutput = null;

                        while (mSqlDr.Read())
                        {
                            strOutput = Convert.ToString(mSqlDr[0]);
                        }

                        if (strOutput.Contains("success"))
                        {
                            strResult = "url Link  Inserted Successfully!!!!!";
                        }
                        else
                        {
                            if (strOutput == string.Empty)
                            {
                                strResult = "urll Link Inserted Failure!!!!! ";
                            }
                            else
                            {
                                strResult = strOutput;
                            }
                        }
                    }
                    catch (Exception ex)
                    {
                        StoreExceptions(ex);
                    }
                    finally
                    {
                        mSqlCon.Close();

                        if (mSqlCon != null) //If con object is not null then Free memory occupied by msqlcon by Dispose it
                            mSqlCon.Dispose();
                        if (mSqlcmd != null)
                            mSqlcmd.Dispose();
                        if (mSqlDa != null)
                            mSqlDa.Dispose();

                        mSqlCon = null;   //free memory occupied by MsqlCon and msqlCmd and mSqlDa
                        mSqlcmd = null;
                        mSqlDa = null;
                    }
                    // return strResult;
                }
            }
















        }










        //    String strConnection = ConfigurationManager.ConnectionStrings["Strings"].ConnectionString; 
        // //this.strConnection = ConfigurationManager.ConnectionStrings["Strings"].ConnectionString;




        ////file upload path
        //string path = fileuploadExcel.PostedFile.FileName;
        ////Create connection string to Excel work book
        //string excelConnectionString = @"Provider=Microsoft.ACE.OLEDB.4.0;Data Source=" + path + ";Extended Properties=Excel 4.0;Persist Security Info=False";
        ////Create Connection to Excel work book

        //OleDbConnection excelConnection =new OleDbConnection(excelConnectionString);
        ////Create OleDbCommand to fetch data from Excel
        //OleDbCommand cmd = new OleDbCommand("Select [ID],[Name],[Designation] from [Sheet1$]",excelConnection);
        //excelConnection.Open();

        //OleDbDataReader dReader;
        //dReader = cmd.ExecuteReader();
        //SqlBulkCopy sqlBulk = new SqlBulkCopy(strConnection);
        ////Give your Destination table name
        //sqlBulk.DestinationTableName = "Excel_table";
        //sqlBulk.WriteToServer(dReader);
        //excelConnection.Close();




    }








    public void StoreExceptions(Exception ex)
    {
        //string strExpName = "Sql Report insertion Failed backend_reports.cs";
        //string strExMessage = ex.Message;
        //string strExDetails = ex.StackTrace;
        //string strExPriority = "High";

        //objReport = new Reporting();
        ////objReport.GotException(strExpName, strExMessage, strExDetails, strExPriority);

        //strExpName = null;
        //strExMessage = null;
        //strExDetails = null;
        //strExPriority = null;

    }
}