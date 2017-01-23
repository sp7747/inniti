using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Text;
using System.Net;
using System.IO;
using System.Net.Mail;
using System.Data;
using System.Data.Sql;
using System.Data.SqlClient;

using System.Configuration;


public partial class Contact_us : System.Web.UI.Page



{


    string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;


    //private String strConnection = "Data Source=192.168.2.200\\SQLEXPRESS;User ID=sa;Password=Pass123#$;Initial Catalog=MedicalBillersAndCodersMergeData;Persist Security Info=True";

    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            BindContrydropdown();
        }


    }
    protected void  Button1_Click(object sender, EventArgs e)
    {




        string HTML;
        MailMessage msg = new MailMessage();
        string strResult;


        //sending Mail 
        try
        {

            //msg.From = new MailAddress("developer@meddatacarepro.com", "Innity");
            ////if (HttpContext.Current.Request.Url.Host.ToString() != "localhost")
            //{
            //    //Server
            //    msg.To.Add("j.developer@meddatacarepro.com");
        
            //    //msg.CC.Add("sandeep@ibnsolution.com");
            //    //msg.CC.Add("dawson@meddatacarepro.com");
            //    //msg.CC.Add("info@meddatacarepro.com");
            //    //msg.CC.Add(steve_email);
            //    //       //msg.CC.Add("praveenkumar@meddatacarepro.com");
            //    //msg.CC.Add(prerna_email);
            //    //msg.CC.Add("ashwinsridharan@meddatacarepro.com");
            //    //msg.CC.Add("anupama@meddatacarepro.com");
            //    //msg.CC.Add("aman@meddatacarepro.com");
            //    //msg.Bcc.Add("developer@meddatacarepro.com");
            //}
            ////else
            ////{
            ////    Local
            ////    msg.To.Add("developer@meddatacarepro.com");
            ////}
            //msg.Priority = MailPriority.Normal;
            //HTML = "<!DOCTYPE HTML PUBLIC\"-//IETF//DTD HTML//EN\">";
            //HTML = HTML + "<html>";
            //HTML = HTML + "<head>";
            //HTML = HTML + "<title>Email</title>";
            //HTML = HTML + "</head>";
            //HTML = HTML + "<body bgcolor=\"FFFFFF\">";
            //HTML = HTML + "<p><font size =\"2\" face=\"Arial\"><strong>";

            //HTML = HTML + "<p>Leads Details  <br/> " + "" + " </p><br>";
            ////HTML = HTML + "<p>The follwing Email ID is Subscribed for ICD-10 Latest News and Training on Medicalbillersandcoders.com <br/> " + emailId + " </p>";
            //HTML = HTML + "NAME::<strong>" + txt_name.Text + "<p>" + "</body><br>";

            //HTML = HTML + "EMAIL::" + txt_email.Text + "<p>" + "</strong>" + "</body><br>";
            //HTML = HTML + "PHONE::" + txt_phone.Text + "<p>" + "</strong>" + "</body><br>";
            //HTML = HTML + "COMMENTS::" + txt_comm.Text + "<p>" + "</strong></body><br>";
            //HTML = HTML + "SERVICE" + ddl_services.Text + "<p>" + "</strong>" + "</body><br>";
            //HTML = HTML + "SUBSERVICE" + ddl_SubService.Text + "<p>" + "</strong>" + "</body><br>";
           
            ////HTML = HTML + "SERVICE::" + txt_services.Text + "<p>" + "</body><br>";


            //HTML = HTML + "</html>";


            ////HTML = HTML + "Name:: " + this.strName_req + "</strong><br>";


            //msg.Subject = " :: Leads  From Innity";
            //msg.Body = HTML;
            //msg.IsBodyHtml = true;
            //SmtpClient client = new SmtpClient();

            //client.Host = "pop.meddatacarepro.com";

            //client.Credentials = new System.Net.NetworkCredential("developer@meddatacarepro.com", "WEkdRHs@!#756"); //--- change this after testing 

            //client.Send(msg);//uncomment while uploading






            //string remoteUrl = "http://localhost:2531/Default2.aspx";

            string CName = txt_compname.Text;
            string Name = txt_name.Text;

            string Desig =txt_desig.Text;
            string Comment = txt_comm.Text;
            string Email = txt_email.Text;
            string Service = ddl_services.SelectedItem.Text;
            string Subservice = ddl_SubService.SelectedItem.Text ;
            string phone = txt_phone.Text;

            //ASCIIEncoding encoding = new ASCIIEncoding();
            //string data = string.Format("CompanyName={0}&Name={1}&Designation={2}&Comment={3}&Email={4}&Services={5}&Subservices={6}&Phone={7}", CName, Name, Desig, Comment, Email, Service, Subservice, phone);
            //byte[] bytes = encoding.GetBytes(data);
            //HttpWebRequest httpRequest = (HttpWebRequest)WebRequest.Create(remoteUrl);
            //httpRequest.Method = "POST";
            //httpRequest.ContentType = "application/x-www-form-urlencoded";
            //httpRequest.ContentLength = bytes.Length;
            //using (Stream stream = httpRequest.GetRequestStream())
            //{
            //    stream.Write(bytes, 0, bytes.Length);
            //    stream.Close();
            //}
            SqlConnection con = new SqlConnection(strConnection);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CRM_Lead_Master (iCompany_Name,iFirstName,iContact_Designation,Requirement,iLead_Service,iLead_SubService,LeadSource,isActive ) values('" + CName + "','" + Name + "','" + Desig + "','" + Comment + "','" + Service + "','" + Subservice + "','INNITI','1')", con);
  
            int lid = cmd.ExecuteNonQuery();



            SqlCommand cmd2 = new SqlCommand("select max (Lead_ID) from  CRM_Lead_Master", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string LeadId = dt.Rows[0][0].ToString();

           
       
            SqlCommand cmd1 = new SqlCommand("insert into CRM_Lead_Details (LeadId,iEmailID,iContact1 ) values('" +LeadId+"', '" + Email + "','" + phone + "')", con);

            cmd1.ExecuteNonQuery();
          



            con.Close();
          


            string mailbody = GenerateMailBody(txt_name.Text,txt_email.Text,txt_phone.Text,txt_comm.Text,txt_desig.Text,txt_compname.Text,ddl_services.SelectedItem.Text,ddl_SubService.SelectedItem.Text);
            //SendMail("developer@meddatacarepro.com",txt_email.Text,"j.developer@meddatacarepro.com","developer1@meddatacarepro.com","Thank you for contacting Inniti",mailbody);

            string mailbody1 = GenerateMailBody_INNITI(txt_name.Text,txt_email.Text,txt_phone.Text,txt_comm.Text,txt_desig.Text,txt_compname.Text,ddl_services.SelectedItem.Text,ddl_SubService.SelectedItem.Text);
            //SendMail("developer@meddatacarepro.com", "j.developer@meddatacarepro.com", "j.developer@meddatacarepro.com", "developer1@meddatacarepro.com", "Inniti Lead for you", mailbody1);



    //        Page.ClientScript.RegisterStartupScript(
    //GetType(),
    //"MyKey",
    //"Myfunction();",
    //true);
            Page.ClientScript.RegisterStartupScript(
    GetType(),
    "MyKey",
    "SwapDivsWithClick('swapper','swapper2');",
    true);






            strResult = "success";

        }
        catch (Exception ex)
        {
            //ErrorLog.WriteErrorLog(ex.ToString());
            ex.ToString();

            strResult = "failure";

        }
        finally
        {
            msg.Dispose();

        }


    }

    public string GenerateMailBody(string Name, string EmailID, string ContactNo, string Comments, string DESIGNATION, string COMPANY,string SERVICE,string SUBSERVICE)
        {
            string MailBody = "Hi " + (Name) + ",<br /><br />THANK YOU FOR CONTACTING US.<br /><br />" + "<TABLE BORDER=\"0\" width=\"80%\">";
            MailBody += COMPANY != "" ? "<TR><TD width=\"15%\"><B>COMPANY</B></TD><TD width=\"2%\"> <B>:</B></TD><TD width=\"83%\"> " + COMPANY + "</TD></TR>" : "";
            MailBody += EmailID != "" ? "<TR><TD><B>Email ID</B></TD><TD> <B>:</B></TD><TD> " + EmailID + "</TD></TR>" : "";
            MailBody += ContactNo != "" ? "<TR><TD><B>Contact No</B></TD><TD> <B>:</B></TD><TD> " + ContactNo + "</TD></TR>" : "";
            MailBody += Comments != "" ? "<TR><TD valign=\"top\"><B>Comments</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + Comments + "</TD></TR>" : "";
            MailBody += SERVICE != "" ? "<TR><TD valign=\"top\"><B>SERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SERVICE + "</TD></TR>" : "";

            MailBody += SUBSERVICE != "" ? "<TR><TD valign=\"top\"><B>SUBSERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SUBSERVICE + "</TD></TR>" : "";
    
        MailBody += "</TABLE><br /><br />Thank You.<br />Have a Nice Day!";
            return MailBody;
        }

     public string GenerateMailBody_INNITI(string Name, string EmailID, string ContactNo, string Comments, string DESIGNATION, string COMPANY,string SERVICE,string SUBSERVICE)
        {
            string MailBody = "<br /><br />Follwing Lead is Generated. <br /><br />" + "<TABLE BORDER=\"0\" width=\"80%\">";
            MailBody += Name != "" ? "<TR><TD width=\"15%\"><B>Name</B></TD><TD width=\"2%\"> <B>:</B></TD><TD width=\"83%\"> " + Name + "</TD></TR>" : "";
            MailBody += COMPANY != "" ? "<TR><TD width=\"15%\"><B>COMPANY</B></TD><TD width=\"2%\"> <B>:</B></TD><TD width=\"83%\"> " + COMPANY + "</TD></TR>" : "";
            MailBody += EmailID != "" ? "<TR><TD><B>Email ID</B></TD><TD> <B>:</B></TD><TD> " + EmailID + "</TD></TR>" : "";
            MailBody += ContactNo != "" ? "<TR><TD><B>Contact No</B></TD><TD> <B>:</B></TD><TD> " + ContactNo + "</TD></TR>" : "";
            MailBody += Comments != "" ? "<TR><TD valign=\"top\"><B>Comments</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + Comments + "</TD></TR>" : "";
            MailBody += SERVICE != "" ? "<TR><TD valign=\"top\"><B>SERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SERVICE + "</TD></TR>" : "";

            MailBody += SUBSERVICE != "" ? "<TR><TD valign=\"top\"><B>SUBSERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SUBSERVICE + "</TD></TR>" : "";
    
            MailBody += "</TABLE><br /><br />Thank You.<br />Have a Nice Day!";
            return MailBody;
        }
     public string SendMail(string From, string To, string CC, string Bcc, string MailSubject, string MailBody)
     {
         //string HTML;
         MailMessage msg = new MailMessage();
         string strResult;


         //sending Mail 
         try
         {

             msg.From = new MailAddress(From, "");
             if (To != "")
                 msg.To.Add(To);
             string[] strCC = CC.Split(',');
             if (CC != "" && strCC.Length > 0)
             {
                 for (int count = 0; count < strCC.Length; count++)
                     msg.CC.Add(strCC[count].Trim());
             }

             string[] strBcc = Bcc.Split(',');
             if (Bcc != "" && strBcc.Length > 0)
             {
                 for (int count = 0; count < strBcc.Length; count++)
                     msg.Bcc.Add(strBcc[count].Trim());
             }
             msg.Priority = MailPriority.Normal;
             msg.Subject = MailSubject;
             msg.Body = MailBody;
             msg.IsBodyHtml = true;
             SmtpClient client = new SmtpClient();
             client.Host = "pop.meddatacarepro.com";
             client.Credentials = new System.Net.NetworkCredential("developer@meddatacarepro.com", "ETPWekc@&$795"); //--- change this after testing 
             client.Send(msg);//uncomment while uploading
             strResult = "success";
             //autoreply_EmailAlerts_fromReportPage(emailId);
         }
         catch (Exception ex)
         {

             ex.ToString();
             //ErrorLog.WriteErrorLog(ex.ToString());
             strResult = "failure";

         }
         finally
         {
             msg.Dispose();

         }

         return strResult;

     }

    protected void BindContrydropdown()
    {
        //conenction path for database
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Mst_Services", con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddl_services.DataSource = ds;
        ddl_services.DataTextField = "Service_Name";
        ddl_services.DataValueField = "Service_ID";
        ddl_services.DataBind();
        ddl_services.Items.Insert(0, new ListItem("--Select--", "0"));

    }






    protected void ddl_services_SelectedIndexChanged(object sender, EventArgs e)
    {

        int ServiceID = Convert.ToInt32(ddl_services.SelectedValue);
        SqlConnection con = new SqlConnection(strConnection);
        con.Open();
        SqlCommand cmd = new SqlCommand("select * from Mst_SubServices where SubServ_Service_ID =" + ServiceID, con);
        SqlDataAdapter da = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        da.Fill(ds);
        con.Close();
        ddl_SubService.DataSource = ds;
        ddl_SubService.DataTextField = "SubServ_Name";
        ddl_SubService.DataValueField = "SubServ_Service_ID";
        ddl_SubService.DataBind();
        ddl_SubService.Items.Insert(0, new ListItem("--Select--", "0"));
        //if(ddl_SubService.SelectedValue=="0")
        //{
        //ddlRegion.Items.Clear();
        //ddlRegion.Items.Insert(0, new ListItem("--Select--", "0"));


        //    }
        //} 
    }
}



























