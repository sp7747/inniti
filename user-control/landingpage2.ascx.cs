using System;
using System.Configuration;
using System.Data;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class user_control_landingpage2 : System.Web.UI.UserControl
{
   // DataSet dset = null;
    public string validationgroup { get; set; }

    Email em = new Email();
   

    GoogleReCaptcha.GoogleReCaptcha ctrlGoogleReCaptcha = new GoogleReCaptcha.GoogleReCaptcha();


    protected override void CreateChildControls()
    {
        base.CreateChildControls();
        
        ctrlGoogleReCaptcha001.PublicKey = "6LeEDSUTAAAAAHM4ISRO_ItbCWPsc4XqZcUujZmI";
       ctrlGoogleReCaptcha001.PrivateKey = "6LeEDSUTAAAAAMb2N7VL2f-KLht2UJkEY8uHtpgo";
        this.Panel1.Controls.Add(ctrlGoogleReCaptcha);
    }



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

    private string _ThanksPage;
    public string ThanksPage
    {
        get { return _ThanksPage; }
        set { _ThanksPage = value; }
    }
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!IsPostBack)
        {
            

           


            BindContrydropdown();
            string strPageName = this.Parent.Page.ToString().Split('.')[1].ToString();

            string strurl = Request.Url.ToString();
            strurl = HttpContext.Current.Request.Url.AbsoluteUri;
            strurl = strurl.Replace("/Rewrite.aspx?404;http://www.medicalbillersandcoders.com:80", "");
            hdnemailinfo.Value = strurl;

            //Landing.aspx
            if (!string.IsNullOrEmpty(validationgroup))
            {
                //ValidationSummary1.ValidationGroup = validationgroup;
              //regexEmailValid.ValidationGroup = validationgroup;
                //RequiredFieldValidator2.ValidationGroup = validationgroup;
               // rgv_name.ValidationGroup = validationgroup;
                //btn_submit.ValidationGroup = validationgroup;
                rqv_company_name.ValidationGroup = validationgroup;

            }
            lblFormHeading.Text = (FormHeading == null || FormHeading == "") ? "Fill Form " : FormHeading;
        }

    }
    //protected void btn_submit_Click(object sender, EventArgs e)
    //{

    //    btn_submit.Attributes.Add("onclick", " this.disabled = true; this.value = 'Submitting';" + Page.ClientScript.GetPostBackEventReference(btn_submit, null) + ";");
        
        
    //    btn_submit.Enabled = false;


    //    if (Page.IsValid)
    //    {
    //        btn_submit.Enabled = false;

    //        BindContrydropdown();
    //        string strexpertemailID = string.Empty;
    //        string strassignto = string.Empty;
    //        string strResultEmail = null;
    //        string strPageName = this.Parent.Page.ToString().Split('.', '_')[1].ToString();
           

    //    }  }

   
    protected void btn_submit_Click(object sender, EventArgs e)
    {
        //Button1.Enabled = false;

        string HTML;
        MailMessage msg = new MailMessage();
        string strResult;
        btn_submit.Attributes.Add("onclick", " this.disabled = true; this.value = 'Submitting';" + Page.ClientScript.GetPostBackEventReference(btn_submit, null) + ";");


        //sending Mail 
        try
        {

            if (ctrlGoogleReCaptcha001.Validate())
            {

                //string remoteUrl = "http://localhost:2531/Default2.aspx";

                string CName = txt_compname.Text;
                string Name = txt_name.Text;

                string Desig = txt_desig.Text;
                string Comment = txt_comm.Text;
                string Email = txt_email.Text;
                //string Service = ddl_services.SelectedItem.Value;
                //Service = "service";
                //string Subservice = ddl_SubService.SelectedItem.Text;
                string phone = txt_phone.Text;
                string strurl = Request.Url.ToString();
                hdnemailinfo.Value = strurl;


                lblFormHeading.Text = (FormHeading == null || FormHeading == "") ? "Fill Form for FREE Rate Quote" : FormHeading;
                ViewState["LeadCategory"] = LeadCategory;
                ViewState["EmailerCampaignSubject"] = EmailerCampaignSubject == null ? "innity-alliance.com:" : EmailerCampaignSubject;



                
                
                
                
                
                SqlConnection con = new SqlConnection(strConnection);
                con.Open();
              
                //SqlCommand cmd = new SqlCommand("insert into CRM_Lead_Master (iCompany_Name,iContact_Designation,Requirement,iLead_Service,iLead_SubService,LeadSource,isActive,LeadSourceType,LeadCategory,SourceURL ) values('" + CName + "','" + Desig + "','" + Comment + "','" + Service + "','" + Subservice + "','INNITI','1','Inbound','" + LeadCategory + "','" + hdnemailinfo.Value + "')", con);
                //int lid = cmd.ExecuteNonQuery();
                //SqlCommand cmd2 = new SqlCommand("select max (Lead_ID) from  CRM_Lead_Master", con);
                //SqlDataAdapter da = new SqlDataAdapter(cmd2);
                //DataTable dt = new DataTable();
                //da.Fill(dt);
                //string LeadId = dt.Rows[0][0].ToString();
                //SqlCommand cmd3 = new SqlCommand("insert into CRM_Contact_Person  (leadId,Contact_First_Name,Contact_Direct_Phone,Contact_Email) values('" + LeadId + "', '" + Name + "','" + phone + "', '" + Email + "')", con);
                //cmd3.ExecuteNonQuery();



                  string query = "inniticontact";         //Stored Procedure name 
                  SqlCommand com = new SqlCommand(query, con);  //creating  SqlCommand  object
                  com.CommandType = CommandType.StoredProcedure;  //here we declaring command type as stored Procedure

       /* adding paramerters to  SqlCommand below*/
                     
                com.Parameters.AddWithValue("@iCompany_Name","CName");        
       com.Parameters.AddWithValue("@iContact_Designation", Desig);    
       com.Parameters.AddWithValue("@Requirement",Comment);      
       com.Parameters.AddWithValue("@iLead_Service", "Service");        
       com.Parameters.AddWithValue("@iLead_SubService", "Subservice");    
               
       com.Parameters.AddWithValue("@LeadSource", "INNITI");      
       com.Parameters.AddWithValue("@isActive", "1");        
       com.Parameters.AddWithValue("@LeadSourceType", "Inbound");  
                
               
       com.Parameters.AddWithValue("@LeadCategory", LeadCategory);      
       com.Parameters.AddWithValue("@SourceURL", hdnemailinfo.Value);      
     
       
                
                //com.ExecuteNonQuery();                     //executing the sqlcommand




       SqlCommand cmd2 = new SqlCommand("select max (Lead_ID) from  CRM_Lead_Master", con);
       SqlDataAdapter da = new SqlDataAdapter(cmd2);
       DataTable dt = new DataTable();
       da.Fill(dt);
       string LeadId = dt.Rows[0][0].ToString();


       //SqlCommand cmd2 = new SqlCommand(query, con);  //creating  SqlCommand  object
       //cmd2.CommandType = CommandType.StoredProcedure;
       //cmd2.ExecuteReader();for dataset
       //com.ExecuteNonQuery();   doent return
       //cmd2.ExecuteScalar();
       // string LeadId = (string)cmd2.ExecuteScalar();

      // string LeadId1 = com.ExecuteScalar(); 

      // int.Parse(LeadId["Lead_ID"].ToString());
      
      //// int LeadId = (int)cmd2.ExecuteScalar();
      // int LeadId = (int)com.ExecuteScalar();



                //SqlCommand cmd3 = new SqlCommand("insert into CRM_Contact_Person  (leadId,Contact_First_Name,Contact_Direct_Phone,Contact_Email) values('" + LeadId + "', '" + Name + "','" + phone + "', '" + Email + "')", con);
                //cmd3.ExecuteNonQuery();
       //SqlCommand cmd3 = new SqlCommand(query, con);  //creating  SqlCommand  object
      // cmd3.CommandType = CommandType.StoredProcedure;





       //object returnValue;
       //returnValue = com.ExecuteScalar()

       com.Parameters.AddWithValue("@leadId", LeadId);
       com.Parameters.AddWithValue("@Contact_First_Name", Name);
       com.Parameters.AddWithValue("@Contact_Direct_Phone", phone);
       com.Parameters.AddWithValue("@Contact_Email", Email);


       com.ExecuteNonQuery();

       con.Close();
               
                
                string CCThanx = em.EmailCcThanx;
                string BCCThanx = em.EmailCcThanx;
                string ToThanx = em.EmailBccThanx;
                string ToLead = em.EmailToLeadFrom;
                string CCLead = em.EmailCcLeadFrom;
                string BCCLead = em.EmailBCcLeadFrom;


             

                string mailbody = GenerateMailBody(txt_name.Text, txt_email.Text, txt_phone.Text, txt_comm.Text, txt_desig.Text, txt_compname.Text, "null", "ddl_SubService.SelectedItem.Text");
                //  SendMail("info@innitialliance", txt_email.Text, "kunal@meddatacarepro.com", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", "Thank you for contacting Inniti", mailbody);
               // SendMail("info@innitialliance", txt_email.Text, "", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", "Thank you for contacting Inniti", mailbody);
                SendMail("info@innitialliance", txt_email.Text, CCThanx, BCCThanx, "Thank you for contacting Inniti", mailbody);
               
                
                string mailbody1 = GenerateMailBody_INNITI(txt_name.Text, txt_email.Text, txt_phone.Text, txt_comm.Text, txt_desig.Text, txt_compname.Text, "null", "ddl_SubService.SelectedItem.Text", hdnemailinfo.Value);
                string mailSubject = ViewState["EmailerCampaignSubject"].ToString();


               // SendMail("info@innitialliance", "", "", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", mailSubject, mailbody1);

                SendMail("info@innitialliance", ToLead, CCLead, BCCLead, mailSubject, mailbody1);


                strResult = "success";

               // string redirect = (ThanksPage == null || ThanksPage == "") ? "contact-us.aspx" : ThanksPage;
                string redirect = (ThanksPage == null || ThanksPage == "") ? "http://www.innitialliance.com/thanks.aspx" : ThanksPage;
          
                Response.Write(redirect);
                Response.Redirect(redirect);


            }
            else {
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", "alert('Capcha Validation Required');", true);
                //Response.Write("fail");
            
            }
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
            //MailBody += COMPANY != "" ? "<TR><TD width=\"15%\"><B>COMPANY</B></TD><TD width=\"2%\"> <B>:</B></TD><TD width=\"83%\"> " + COMPANY + "</TD></TR>" : "";
            MailBody += EmailID != "" ? "<TR><TD><B>Email ID</B></TD><TD> <B>:</B></TD><TD> " + EmailID + "</TD></TR>" : "";
            MailBody += ContactNo != "" ? "<TR><TD><B>Contact No</B></TD><TD> <B>:</B></TD><TD> " + ContactNo + "</TD></TR>" : "";
            MailBody += Comments != "" ? "<TR><TD valign=\"top\"><B>Comments</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + Comments + "</TD></TR>" : "";
            //MailBody += SERVICE != "" ? "<TR><TD valign=\"top\"><B>SERVICE</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + SERVICE + "</TD></TR>" : "";
            MailBody += SourceURl != "" ? "<TR><TD><B>Link:</B></TD><TD valign=\"top\"> <B>:</B></TD><TD> " + hdnemailinfo.Value + "</TD></TR>" : "";

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
        //ddl_services.DataSource = ds;
        //ddl_services.DataTextField = "Service_Name";
        //ddl_services.DataValueField = "Service_ID";
        //ddl_services.DataBind();
        //ddl_services.SelectedValue = "4";
       // ddl_services.Items.Insert(0, new ListItem("--Select--", ""));
        
    }






    //protected void ddl_services_SelectedIndexChanged(object sender, EventArgs e)
    //{

    //    int ServiceID = Convert.ToInt32(ddl_services.SelectedValue);
    //    SqlConnection con = new SqlConnection(strConnection);
    //    con.Open();
    //    SqlCommand cmd = new SqlCommand("select * from Mst_SubServices where SubServ_Service_ID =" + ServiceID, con);
    //    SqlDataAdapter da = new SqlDataAdapter(cmd);
    //    DataSet ds = new DataSet();
    //    da.Fill(ds);
    //    con.Close();
    //    ddl_SubService.DataSource = ds;
    //    ddl_SubService.DataTextField = "SubServ_Name";
    //    ddl_SubService.DataValueField = "SubServ_Service_ID";
    //    ddl_SubService.DataBind();
    //    ddl_SubService.Items.Insert(0, new ListItem("--Select--", "0"));
    //    //if(ddl_SubService.SelectedValue=="0")
    //    //{
    //    //ddlRegion.Items.Clear();
    //    //ddlRegion.Items.Insert(0, new ListItem("--Select--", "0"));


    //    //    }
    //    //} 
    //}
    
}



    //protected void cvtxtcaptcha_ServerValidate(object source, ServerValidateEventArgs args)
    //{
    //    if (lblCaptcha.Text != "" && txtCaptcha.Text.Trim().ToLower().Equals(lblCaptcha.Text.ToLower()))
    //        args.IsValid = true;
    //    else
    //    {
    //        args.IsValid = false;
    //        lblCaptcha.Text = new CR_Common().GetCaptchaText();
    //    }
    //}

 

