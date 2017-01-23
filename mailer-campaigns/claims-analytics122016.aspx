<%@ Page Language="C#" AutoEventWireup="true" CodeFile="claims-analytics122016.aspx.cs" Inherits="mailer_campaigns_insurance_fraud27" %>

<%@ Register Src="~/user-control/main-control.ascx" TagPrefix="uc1" TagName="maincontrol" %>
<!DOCTYPE html>



<head id="Head1" runat="server">
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1"> 
  <meta name="description" content="Inniti Alliance is one of the leading Insurance Claims Processing Company in the US." />
  <title>Insurance Claims Processing | Inniti Alliance</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
  <style>
*{
	margin:0px auto;	
	}
.screen{

	}
.main{
	width:74%;
	background-color:#2E495A;
	}
.logo{
	padding:10px 0px 10px 40px;
	}
.toll{
	font-family: arial;
	font-size:18px;
	color:#fff;
	text-align:right;
	padding:45px 35px 10px 0px;
	}
.banner{
	border-bottom: 3px solid #fff;
	padding-left:0px;
	padding-right:0px;
	}
.middle{
	background-color:#2E495A;
	padding-right:15px;
	}
.container-fluid{
	padding-left:0px;
	padding-right:0px;
	}
.content{
	font-family:calibri;
	font-size: 19.5px;
	color:#fff;
	margin-top:40px;
	}
.contact{
		background-color:#2B3F47;
		height:auto;
		font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
		font-size:16px;
		color:#fff;
		text-align:center;
		margin-top:40px;
		}
.bar{
		border:1px solid #999999;
		background-color:#EAEAEA;
		color:black;
		width:90%;
		padding:3px;
		margin-top:6px;
		font-family:arial;
		}
.footer{
	background-color:#5EBAD7;
	font-family:calibri;
	font-size:17px;
	padding:20px;
	text-align:center;
	color:#000;
	text-align:center;

	}	#lstofall{list-style: none !important;
padding: 8px  !important;
margin: 0px 0px -30px 0px !important;
	 	}
          .g-recaptcha {padding: 15px !important;
      }

      #maincontrol1_btn_submit {
      
      padding: 2px;
margin: 14px;
width: 63%;
      }
  </style>
</head>
<body>
    <form id="form1" runat="server"> <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <div class="container-fluid screen">
	<div class="container main">
	<div class="row header">
        	<div class="col-md-3 logo">
            <a href="http://www.innitialliance.com/" target="_blank"><img src="http://www.innitialliance.com/images/inniti-logo.png" alt="inniti alliance logo" /></a>
            </div>
            <div class="col-md-6"></div>
            <div class="col-md-3 toll">Toll-free: 888-452-1962</div>
    </div>
    <div class="row">
    	<div class="col-lg-12 banner">
        	<img src="http://www.innitialliance.com/mailer-campaigns/images/Claims-Analytics.jpg" alt="claims Analytics banner" border="0" align="middle" usemap="#Map" class="img-responsive">
            <map name="Map">
              <area shape="rect" coords="466,111,778,261" href="http://www.innitialliance.com/claims-analytics.aspx" target="_blank" alt="Claims Analytics">
            </map>
        </div>
    </div>
    <div class="row middle">
    	<div class="col-md-8 content">
        	<p>
            	Insurance Fraud is the second biggest white-collar crime in the U.S. after 
Tax Evasion.

Claims Analytics can help Insurers Identify and <br>reduce Fraud-related losses, 
as well as condense the Claims Cycle, resulting in improved Customer 
Satisfaction
               <%-- <a style="color:#FBB03B;" href="http://www.innitialliance.com/customer-retention-management.aspx" target="_blank">Customer 
Satisfaction</a>--%>. 
            </p>
            <br/>
            <p>
            <span style=" font-weight:bold; font-size:20px;">Why <a href="http://www.innitialliance.com/about-us.aspx" target="_blank" style="text-decoration:none; color:#FBB03B">Inniti Alliance?</a></span>
           <ul style="padding-left:20px;">
           	<li>We are our clients Virtual Extension</li>
            <li>Customer Focused</li>
            <li>Committed to Automation and Innovation</li>
            <li> Strive on Continuous Improvements </li>
            <li>Can lower the Operational Costs, while Boosting the Profits</li>
           </ul>
          </p>
        </div>
        <div class="col-md-4 contact">
        	 <uc1:maincontrol runat="server" runat="server" FormHeading="Contact-Us" LeadCategory="Inniti" EmailerCampaignSubject="Lead From Inniti" id="maincontrol1" />
        </div>
    </div>
    	  	<div class="row">
    	<div class="col-md-12 footer">
  	All Rights Reserved. @2017 <a href="http://www.innitialliance.com/" target="_blank" style="font-weight:bold; color:#0071BC"> innitialliance.com</a>
  </div>
    </div>
    </div>

</div>
    </form>
</body>
</html>
