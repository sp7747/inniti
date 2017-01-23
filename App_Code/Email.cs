using System;
using System.Data;
using System.Configuration;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.HtmlControls;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Xml.Linq;
using System.Configuration;
using System.Web.Configuration;
using System.Net.Configuration;
using System.Net.Mail;
using System.Collections;
using System.Collections.Generic;
using System.IO;
/// <summary>
/// Summary description for Email
/// </summary>
public class Email
{
	public Email()
	{
		//
		// TODO: Add constructor logic here
		//
    }


    // for agents and us
    public string EmailToLeadFrom = "Ayon@meddatacarepro.com";
    public string EmailCcLeadFrom = "Prerna@meddatacarepro.com,kunal@meddatacarepro.com,seo@innitialliance.com";
    public string EmailBCcLeadFrom = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com,developer@meddatacarepro.com";


    //for client
    public string EmailToThanx = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com,seo@innitialliance.com";
    public string EmailCcThanx = "j.developer@meddatacarepro.com";
    public string EmailBccThanx = "developer@meddatacarepro.com";







    //for testing

    // for agents and us


    //public string EmailCcLeadFrom = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com";
    //public string EmailToLeadFrom = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com";
    //public string EmailBCcLeadFrom = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com";
    
    
    ////for client


    //public string EmailToThanx = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com";
    //public string EmailCcThanx = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com";
    //public string EmailBccThanx = "developer1@meddatacarepro.com,j.developer@meddatacarepro.com";

    

}