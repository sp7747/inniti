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

public partial class About : Page
{
    string strConnection = ConfigurationManager.ConnectionStrings["strings"].ConnectionString;
    protected void Page_Load(object sender, EventArgs e)
    {

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

}

