<%@ Page Language="C#" AutoEventWireup="true" CodeFile="claims-management112016.aspx.cs" Inherits="mailer_campaigns_claims_management112016" %>

<%@ Register Src="~/user-control/main-control.ascx" TagPrefix="uc1" TagName="maincontrol" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>The Perils of Unmanaged Claims could grow into Major Challenge</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.1.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  
<link href="css/claims-management-nov.css" rel="stylesheet" type="text/css" />

    <style>
  	.screen{
		background-color:#F15A24;
		
		}
	.main{
		width:75%;
		padding:0px;
		}
	.header{
		background-color:#FFF;
		box-shadow: 0px 0px 4px 0px #333;
		margin-right:0px;
		}
	.logo{
		padding:13px 10px 13px 20px;
		text-align:center;
		}
	.toll{
		font-family:Arial, Helvetica, sans-serif;
		font-weight:bold;
		padding:50px 20px 13px 25px;
		text-align:center;
		}
	.ban{
		margin-left:-29px;
		}
	.banner{
		margin-top:14px;
		/*background-image:url(landing-page_banner2.jpg);
		background-repeat:no-repeat;*/
		
		}
	.middle{
		margin-top:14px;
		margin-right:0px;
		margin-left:-15px;
		}
	.content{
		background-color:#fff;
		font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
		font-size:16px;
		padding:0px 0px 47px 0px;
		
		}
	.contact{
		background-color:#FFF;
		height:auto;
		font-family:"Trebuchet MS", Arial, Helvetica, sans-serif;
		font-size:16px;
		color:#F15A24;
		text-align:center;
        padding: 9px;/*ido*/
		}
	.bar{
		border:1px solid #F15A24;
		background-color:#EAEAEA;
		color:black;
		width:90%;
		padding:3px;
		margin-top:6px;
		}
	::-webkit-input-placeholder {
   color: black;
		}
	::-moz-input-placeholder {
   color: black;
		}
	:-ms-input-placeholder {  
   color: black;  
}
	.foot{
		margin-right:0px;
		}
	.footer{
		background-color:#FFF;
		box-shadow: 0px 0px 4px 0px #333;
		font-family:Arial, Helvetica, sans-serif;
		font-size:12px;
		text-align:center;
		margin-top:14px;
		padding:6px;
		}


    /*ido*/
        .ol, ul {


        list-style:none;
        padding:3px;

        }
        #maincontrol1_btn_submit{width:27%; margin-bottom:9px;}
        /*ido*/
  </style>
    



</head>
<body>
    <form id="form1" runat="server"> <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
   <div class="container-fluid screen">
	<div class="container main">
    	<div class="row header">
        	<div class="col-md-3 logo">
            <a href="http://www.innitialliance.com/" target="_blank"><img src="images/inniti-logo.jpg" alt="inniti alliance logo" /></a>
            </div>
            <div class="col-md-6"></div>
            <div class="col-md-3 toll">Toll-free: (888)-452-1962</div>
        </div>
        <div class="row ban">
        <div class="col-md-12 banner">


        	<img src="images/landing-page_banner2.jpg" alt="claims Management" border="0" usemap="#Map" class="img-responsive" />
            <map name="Map">
              <area shape="circle" coords="533,102,95" href="http://www.innitialliance.com/claims-management.aspx" target="_blank">
              <area shape="circle" coords="96,232,77" href="http://www.innitialliance.com/claims-management.aspx" target="_blank">
              <area shape="circle" coords="317,233,60" href="http://www.innitialliance.com/claims-management.aspx" target="_blank">
              <area shape="circle" coords="821,219,102" href="http://www.innitialliance.com/claims-management.aspx" target="_blank">
            </map>
        </div>
        </div>
        <div class="row middle">
        <div class="col-md-7 content">
        	<div class="col-md-5" style="left:2px; text-align:center; margin-top:5px;">
            	<img src="images/character.jpg" />
            </div>
            <div class="col-md-7" style="right:6px; margin-top:5px;">
            	<h4 style="color:#F15A24">As a claims management firm we at Inniti Strive to:</h4>
                <p>Maintain Regular contact with the Payers</p> 

				<p>Work closely with the claims adjuster to ascertain the <b>coverage of old backlog</b></p>

				<p>Provide <b>quality audits in a timely manner,</b> and notify all pertinent developments <b>to the last cent.</b></p>
                <p>Achieve <b>claims accuracy up to 99%</b></p>
            </div>
        </div>
        <div class="col-md-1"></div>
        <div class="col-md-4 contact">
<%--            	  <uc1:landingpage2    class="bar"   runat="server" FormHeading="Contact-Us" LeadCategory="Inniti" EmailerCampaignSubject="Lead From Inniti"  ID="landingpage2" />--%>

    
            <uc1:maincontrol runat="server" class="bar"   runat="server" FormHeading="Contact-Us" LeadCategory="Inniti" EmailerCampaignSubject="Lead From Inniti"   ID="maincontrol1" />
   </div>
        </div>
        <div class="row foot">
        <div class="col-lg-12 footer">
        	<b>All Rights Reserved. @2017, <a href="http://www.innitialliance.com/" target="_blank" style="color:#000">innitialliance.com</a></b>
        </div>
        </div>
    </div>
</div>
    </form>
</body>
</html>
