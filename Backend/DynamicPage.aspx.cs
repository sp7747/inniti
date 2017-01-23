using System;
using System.Web.UI;
using System.Data;
using System.Configuration;
using System.Data.SqlClient;
using System.Net.Mail;


public partial class Press_prelease_DynamicPage : System.Web.UI.Page
{
    string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {
        if (!this.IsPostBack)
        {








            this.Sidecontent();



            this.PopulatePage();
        }
    }


    private void PopulatePage()
    { string Pagen="";
      if(RouteData.Values["PageName"] != null)
          Pagen = this.Page.RouteData.Values["PageName"].ToString();
      string query = "SELECT [Title],[PageName], Mail_Content FROM Inniti_backend_Pr WHERE [PageName] = @PageName";
        string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;


        // string strConnection = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnection))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    cmd.Parameters.AddWithValue("@PageName", Pagen);
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt = new DataTable())
                    {
                        sda.Fill(dt);
                        lblTitle.Text = dt.Rows[0]["Title"].ToString();
                   
                        lblContent.Text = dt.Rows[0]["Title"].ToString();
                        
                        inner_content.InnerHtml = dt.Rows[0]["Mail_Content"].ToString();


                    }
                }
            }
        }
    }
    protected void btn_subscribe_Click(object sender, EventArgs e)
    {
        string strResult;

        MailMessage msg = new MailMessage();

        try
        {




            string mailbody = GenerateMailBody();
            //SendMail("info@innitialliance", txt_Email.Text, "seo@innitialliance.com", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", "Thank you for contacting Inniti", mailbody);

            //          string mailbody1 = GenerateMailBody_INNITI(txt_Email.Text);
            //        SendMail("info@innitialliance", "", "seo@innitialliance.com", "developer1@meddatacarepro.com,j.developer@meddatacarepro.com", "Inniti Lead for you", mailbody1);


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
    public string GenerateMailBody()
    {
        string MailBody = "Hi <br /><br />Thank you for Subscribing to our Newsletter. You can connect with us on our Social channels - Facebook, Twitter & LinkedIn.<br /><br />" + "<TABLE BORDER=\"0\" width=\"80%\">";

        MailBody += "</TABLE><br /><br />Thanks & Regards<br />Team-InnitiAlliance";
        return MailBody;
    }

    public string GenerateMailBody_INNITI(string EmailID)
    {
        string MailBody = "<br /><br />Following Lead Subscribed to our Newsletter . <br /><br />" + "<TABLE BORDER=\"0\" width=\"80%\">";
        MailBody += EmailID != "" ? "<TR><TD><B>Email ID</B></TD><TD> <B>:</B></TD><TD> " + EmailID + "</TD></TR>" : "";
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


    public void Sidecontent(){


        string Pagen = "";
        if (RouteData.Values["PageName"] != null)
            Pagen = this.Page.RouteData.Values["PageName"].ToString();
        string query = " SELECT TOP 1 * FROM( SELECT TOP 2 * FROM [Inniti_backend_Pr] ORDER BY id desc)z  ORDER BY id asc"; 
      
        string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;


        // string strConnection = ConfigurationManager.ConnectionStrings["constr"].ConnectionString;
        using (SqlConnection con = new SqlConnection(strConnection))
        {
            using (SqlCommand cmd = new SqlCommand(query))
            {
                using (SqlDataAdapter sda = new SqlDataAdapter())
                {
                    //cmd.Parameters.AddWithValue("@PageName", Pagen);
                    cmd.Connection = con;
                    sda.SelectCommand = cmd;
                    using (DataTable dt1 = new DataTable())
                    {
                        sda.Fill(dt1);
                        lbl_sidelink.Text = dt1.Rows[0]["PageName"].ToString();
                        lbl_sidelink2.Text = dt1.Rows[0]["PageName"].ToString().Replace("-"," ").ToUpper();
                        lbl_Main_head.Text = dt1.Rows[0]["Title"].ToString().Trim();
                       
                    }
                }
            }
        }
    
    }
}