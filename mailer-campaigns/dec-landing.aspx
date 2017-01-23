#<%@ Page Language="C#" AutoEventWireup="true" CodeFile="dec-landing.aspx.cs" Inherits="mailer_campaigns_dec_landing" %>
<%@ Register Src="~/user-control/main-control.ascx" TagPrefix="uc1" TagName="maincontrol" %>
<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
  <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <style>
  	*{
		box-sizing:border-box;
		}
	.main{
		width:74%;
		background-color:#F4C684;
		}
	.header{
		background-color:#FFB901;
		}
	.logo{
		padding: 15px 0px 15px 30px;
		}
	.toll{
		font-size:18px;
		font-family:arial; 
		text-align:right;
		padding:45px 25px 15px 0px;
		}
	.middle{
		/*padding: 60px;*/
        padding: 20px;
		font-family:calibri;
		font-size:20px;
		color:#000;
		}
	.right{
		background-color:#C69759;
		height:auto;
		font-family:Arial, Helvetica, sans-serif;
		font-size:16px;
		color:#fff;
		text-align:center;
        width: 33%;
        padding: 17px;
		}
	.bar{
		border:2px solid #FFC668;
		background-color:#EAEAEA;
		color:black;
		width:90%;
		padding:3px;
		margin-top:6px;
		}
	.footer{
		font-family:calibri;
		color:#000;
		text-align:center;
		background-color:#FFB901;
		font-size:17px;
		padding:8px;
		}
		
		
		
		
		
		
		lstofall{list-style: none !important;
padding: 1px !important;}
		
		
		
		
		
		
		
		
  </style>
  <%--  <link href="css/claims-management-july.css" rel="stylesheet" type="text/css" />--%>





</head>
<body>
    <form id="form1" runat="server"> <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
  <div class="container main">
	    <div class="row header">
        <div class="col-md-5 logo">
        	<a href="http://www.innitialliance.com" target="_blank"><img src="/images/inniti-logo.png"  alt="inniti alliance"></a> 
        </div>
        <div class="col-md-2"></div>
        <div class="col-md-5 toll">Toll free: 888 452 1962</div>
        </div>
        <div class="row banner">
        	<img src="/images/inniti-dec.jpg" alt="claims process" class="img-responsive"/>
        </div>
        <div class="row middle">
        	<div class="col-md-8 left" align="left">
            	<p>Competitive pressures challenge the insurance industry as new players 
and a rigorous regulatory climate increase the need to improve 
processes, business models, and streamline operations. Turning to 
insurance outsourcing safeguards your competitive advantage and 
further growth.</p>
<p><b>Key Benefits of aligning with Inniti for Insurance <a href="http://www.innitialliance.com/claims-management.aspx"><u>Claims Processing</u></a></b></p>
<ul>
	<li>Reduction in overhead costs by 80%</li>
    <li>Reduces physical storage space occupied by paper files via Digital 
	locker rooms</li>
    <li>Outsourcing insurance claims process to means top quality and 
	speedy TAT.
</li>
    <li>We provide you reduction in operational and financial savings of 
	up to 50%.
</li>
    <li>Our claims processing is safe and confidential with extra care taken 
	to look into fallacious and disputable claims.
</li>
</ul>
            </div>
            <%--<div class="col-md-4 right" align="right">--%>
        <div class="col-md-5 right contact">

            <uc1:maincontrol runat="server" runat="server" FormHeading="Contact-Us" LeadCategory="Inniti" EmailerCampaignSubject="Lead From Inniti" id="maincontrol" />

   </div><%--</div>--%>
        </div>
        <div class="row">
 	<div class="col-md-12 footer">
 	<p>All Rights Reserved. @2017 <a href="http://www.innitialliance.com/" style="color:#06C">innitialliance.com</a></p>
    </div>
 </div>
</div>
    </form>
</body>
</html>
