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
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;

public partial class user_control_Contact : System.Web.UI.UserControl
{
    string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;


    private string formHeading;
    public string FormHeading
    {
        get { return formHeading; }
        set { formHeading = value; }
    }

    private string _LeadCategory;
    public string LeadCategory
    {
        get { return _LeadCategory; }
        set { _LeadCategory = value; }
    }

    private string _EmailerCampaignSubject;
    public string EmailerCampaignSubject
    {
        get { return _EmailerCampaignSubject; }
        set { _EmailerCampaignSubject = value; }
    }


    protected void Page_Load(object sender, EventArgs e)
    {
        btn_submit.Attributes.Add("onclick", " this.disabled = true; this.value = 'Submitting';" + Page.ClientScript.GetPostBackEventReference(btn_submit, null) + ";");
        if (!IsPostBack)
        {
            BindContrydropdown();
        }

    }
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        //Button1.Enabled = false;

        string HTML;
        MailMessage msg = new MailMessage();
        string strResult;


        //sending Mail 
        try
        {
            //string remoteUrl = "http://localhost:2531/Default2.aspx";

            string CName = txt_compname.Text;
            string Name = txt_name.Text;

            string Desig =txt_desig.Text;
            string Comment = txt_comm.Text;
            string Email = txt_email.Text;
            string Service = ddl_services.SelectedItem.Value;
            string Subservice = ddl_SubService.SelectedItem.Text ;
            string phone = txt_phone.Text;
            string strurl = Request.Url.ToString();
            hdnemailinfo.Value = strurl;


            lblFormHeading.Text = (FormHeading == null || FormHeading == "") ? "Fill Form for FREE Rate Quote" : FormHeading;
            ViewState["LeadCategory"] = LeadCategory;
            ViewState["EmailerCampaignSubject"] = EmailerCampaignSubject == null ? "innity-alliance.com:" : EmailerCampaignSubject;
            SqlConnection con = new SqlConnection(strConnection);
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into CRM_Lead_Master (iCompany_Name,iContact_Designation,Requirement,iLead_Service,iLead_SubService,LeadSource,isActive,LeadSourceType,LeadCategory,SourceURL ) values('" + CName + "','" + Desig + "','" + Comment + "','" + Service + "','" + Subservice + "','INNITI','1','Inbound','" + LeadCategory + "','" + hdnemailinfo.Value + "')", con);
            int lid = cmd.ExecuteNonQuery();
            SqlCommand cmd2 = new SqlCommand("select max (Lead_ID) from  CRM_Lead_Master", con);
            SqlDataAdapter da = new SqlDataAdapter(cmd2);
            DataTable dt = new DataTable();
            da.Fill(dt);
            string LeadId = dt.Rows[0][0].ToString();
            SqlCommand cmd3 = new SqlCommand("insert into CRM_Contact_Person  (leadId,Contact_First_Name,Contact_Direct_Phone,Contact_Email) values('" + LeadId + "', '" + Name + "','" + phone + "', '" + Email + "')", con);
            cmd3.ExecuteNonQuery();
            con.Close();
            string mailbody = GenerateMailBody(txt_name.Text,txt_email.Text,txt_phone.Text,txt_comm.Text,txt_desig.Text,txt_compname.Text,ddl_services.SelectedItem.Text,ddl_SubService.SelectedItem.Text);
          //  SendMail("info@innitialliance", txt_email.Text, "kunal@meddatacarepro.com", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", "Thank you for contacting Inniti", mailbody);
            SendMail("info@innitialliance", txt_email.Text, "", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", "Thank you for contacting Inniti", mailbody);
            string mailbody1 = GenerateMailBody_INNITI(txt_name.Text,txt_email.Text,txt_phone.Text,txt_comm.Text,txt_desig.Text,txt_compname.Text,ddl_services.SelectedItem.Text,ddl_SubService.SelectedItem.Text,hdnemailinfo.Value);
            string mailSubject = ViewState["EmailerCampaignSubject"].ToString();
            SendMail("info@innitialliance", "", "", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", mailSubject, mailbody1);
            
            strResult = "success";

        }
        catch (Exception ex)
        {
          
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
            string MailBody = "Hi " + (Name) + ",<br /><br />Thank you for contacting us. We have received your query & one of our sales representative will get in touch with you shortly.<br /><br />" + "<TABLE BORDER=\"0\" width=\"80%\">";
            //MailBody += COMPANY != "" ? "<TR><TD width=\"15%\"><B>COMPANY</B></TD><TD width=\"2%\"> <B>:</B></TD><TD width=\"83%\"> " + COMPANY + "</TD></TR>" : "";
            //MailBody += EmailID != "" ? "<TR><TD><B>Email ID</B></TD><TD> <B>:</B></TD><TD> " + EmailID + "</TD></TR>" : "";
            //MailBody += ContactNo != "" ? "<TR><TD><B>Contact No</B></TD><TD> <B>:</B></TD><TD> " + ContactNo + "</TD></TR>" : "";
            //MailBody += Comments != "" ? "<TR><TD valign=\"top\"><B>Comments</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + Comments + "</TD></TR>" : "";
            //MailBody += SERVICE != "" ? "<TR><TD valign=\"top\"><B>SERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SERVICE + "</TD></TR>" : "";

            //MailBody += SUBSERVICE != "" ? "<TR><TD valign=\"top\"><B>SUBSERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SUBSERVICE + "</TD></TR>" : "";

            MailBody += "</TABLE><br /><br />Thanks & Regards<br />Team-InnitiAlliance";
            return MailBody;
        }

     public string GenerateMailBody_INNITI(string Name, string EmailID, string ContactNo, string Comments, string DESIGNATION, string COMPANY,string SERVICE,string SUBSERVICE,string SourceURl)
        {
            
            string MailBody = "<br /><br />Following Lead is Generated. <br /><br />" + "<TABLE BORDER=\"0\" width=\"80%\">";
            MailBody += Name != "" ? "<TR><TD width=\"15%\"><B>Name</B></TD><TD width=\"2%\"> <B>:</B></TD><TD width=\"83%\"> " + Name + "</TD></TR>" : "";
            MailBody += COMPANY != "" ? "<TR><TD width=\"15%\"><B>COMPANY</B></TD><TD width=\"2%\"> <B>:</B></TD><TD width=\"83%\"> " + COMPANY + "</TD></TR>" : "";
            MailBody += EmailID != "" ? "<TR><TD><B>Email ID</B></TD><TD> <B>:</B></TD><TD> " + EmailID + "</TD></TR>" : "";
            MailBody += ContactNo != "" ? "<TR><TD><B>Contact No</B></TD><TD> <B>:</B></TD><TD> " + ContactNo + "</TD></TR>" : "";
            MailBody += Comments != "" ? "<TR><TD valign=\"top\"><B>Comments</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + Comments + "</TD></TR>" : "";
            MailBody += SERVICE != "" ? "<TR><TD valign=\"top\"><B>SERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SERVICE + "</TD></TR>" : "";
            MailBody += SourceURl != "" ? "<TR><TD><B>Link:</B></TD> <TD>" + hdnemailinfo.Value + "</TD></TR>" : "";

            //MailBody += SUBSERVICE != "" ? "<TR><TD valign=\"top\"><B>SUBSERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SUBSERVICE + "</TD></TR>" : "";
    
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

