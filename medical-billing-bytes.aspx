<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPageServices.master" AutoEventWireup="true"
    CodeFile="medical-billing-bytes.aspx.cs" Inherits="medical_billing_bytes" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">
    Medical Billing Bytes | Medical Billing Infographs – MedicalBillersandCoders.com
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headMeta" runat="Server">
    <meta name="description" content="Medical Billing Bytes provides detailed information on the services, billing processes & the specialties with the help of Infographs." />
    
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <div class="container">
<div:Navigation ID="oNavigation" runat="server" />
        </div>

   <%-- <link href="libraries/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    --%>
   
   <%-- <script src="libraries/plugins/fancybox/source/jquery.fancybox.js"></script>--%>

<link href="libraries/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
    
<%--<link href="libraries/css/pages/portfolio.css" rel="stylesheet" type="text/css"/>--%>
    <link href="libraries/css/pages/portfolio.css" rel="stylesheet" />
 <!-- Custom style -->
    <%--<link href="css/style-menu.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet">
--%>

    
<!--[if lt IE 9]>

    <script type="text/javascript">
        window.location.assign("error.php");
    </script>
    <noscript>
        <META http-equiv="refresh" content="3;URL=error.php"> 
    </noscript> 
<![endif]-->
  </head>
  <body>
    
<!-- Slide trigger start here -->
<?php include ('includes/slide-trigger.php'); ?> 
<!-- Slide trigger end here --> 
      
    <div class="cd-main-content">

        <div class="">
            <div class="container">
                <?php include ('includes/navigation.php'); ?>
            </div>




        </div><!--/.banner-section end-->
<%--
  <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Medicalbillers Andcoders :: Infographs</title>

    <!-- Bootstrap -->
    
  <%--  <link href="libraries/bootstrap/css/bootstrap.min.css" rel="stylesheet">--%>
    
   
  <%-- <div class="banner-inner baner-bg-dgray ">
        	<div class="container">
            	<div class="col-sm-12">
               	  <h3 class="text-white text-center">Infographs</h3>
                   
                  <div class="banner-thanks-area">
                  
                  	<h5>Medical Billing Bytes are infographics that explains services, billing process and the key benefits in a nut shell. A quick look at this pictorial section shows how exactly how your billing practice can have an edge above others!</h5>
                  </div>
                  
                  <div class="padding-bottom-40">&nbsp;</div>
                  
                  
                   
                </div>
                
            
            </div>
        
        </div>--%>
        
        
        <!--change-->
        
             <div class="banner-inner baner-bg-blue-light">
                <div class="container">
                    <div class="col-sm-7">
                        <%--<h3>Medical Billing Glossary</h3>--%>
                        <h1 class="h1tagdiv">Infographs</h1>
                        <p style="font-size:medium;padding-top:45px;text-align:center;line-height: 1.5;">Medical Billing Bytes are infographics that explains services, billing process and the key benefits in a nut shell. A quick look at this pictorial section shows how exactly how your billing practice can have an edge above others!</p>
                    </div>
                    <div class="row">
                        <div class="col-sm-5">
                            <div class="banner-img-billing-guideline2">&nbsp;</div>
                        </div>
                    </div>
                </div>
            </div>
        
        
        <!--change-->        
        
        
        
        
        
        
        
        
        <div class="container">
           <div class="white-section"> 
            
            <div id="page1">
            <div class="row mix-grid thumbnails mwidth-section">

                
                  <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/10-Signs-You-Should-Invest-in-Managing-Your-Accounts-Receivables-icon.jpg" alt="woundcare-billing"> 
                     <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/10-Signs-You-Should-Invest-in-Managing-Your-Accounts-Receivables.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>10  Signs You Should Invest in Managing Your Account Receivables </h3></a>
                        <p>
                        10  Signs You Should Invest in Managing Your Account Receivables
                        </p>
                        
                    </div>
                   
                </div>
            </div>
                  <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/woundcare-billing.jpg" alt="woundcare-billing"> 
                     <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/wound-care-billing.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Wound Care Billing Infograph </h3></a>
                        <p>
                         Wound Care Billing Infograph
                        </p>
                        
                    </div>
                   
                </div>
            </div>


                 <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/Top-Earning-Specialtie-of-2016.jpg" alt="Top-Earning-Specialtie-of-2016.jpg"> 
                     <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/Top-Earning-Specialties-of-2016.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Physician Compensation for the year 2016 </h3></a>
                        <p>
                          Physician Compensation for the year 2016
                        </p>
                        
                    </div>
                   
                </div>
            </div>



                 <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/DME-Modifiers-and-Frequently-used-ICD-10-Codes-Infograph.jpg" alt="DME"> 
                     <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/DME-Modifiers-and-Frequently-used-ICD-10-Codes-Infograph.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>DME </h3></a>
                        <p>
                          DME Modifiers and Frequently used ICD 10 Codes
                        </p>
                        
                    </div>
                </div>
            </div>

              <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                  <img class="img-responsive" src="images/works/ASC-infograph-volume-wise.jpg" alt="ASC"> 
                    <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/ASC-infograph-volume-wise.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>ASC</h3></a>
                        <p>
                           Check out this latest Info graph on Highest Billing ASC's 
                        </p>
                        
                    </div>
                </div>
            </div>
                 <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/Understanding-and-Preventing-Fraud-in-the-ambulance-billing-services.jpg" alt="Ambulance Billing Services">
                   <div class="mix-details">
                        <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/Understanding-and-Preventing-Fraud-in-the-ambulance-billing-services.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                       <h3>Ambulance Billing Services</h3></a>
                        <p>
                           Understanding-and-Preventing-Fraud-in-the-ambulance-billing-services
                        </p>
                    </div>
                </div>
            </div>
            
          
            
          






            
            
         
         
            
       <%--    
           <div>
							<ul class="pagination">
									<li>
										<a href="#" >
											<i class="fa fa-angle-left"></i>
										</a>
									</li>
									<li class="active">
										<a href="#">
											 1
										</a>
									</li>
									<li>
										<a href="#">
											 2
										</a>
									</li>
									
									<li>
										<a href="#">
											<i class="fa fa-angle-right"></i>
										</a>
									</li>
								</ul>
							</div>--%>
            
        </div> 
           
               </div>
            <div id="page2">   
                <div class="row mix-grid thumbnails mwidth-section">

                    
                  <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                   <img class="img-responsive" src="images/works/Pharmacist-and-the-Changing-Healthcare-System.jpg" alt="Pharmacist-and-the-Changing-Healthcare-System"> 
                   <div class="mix-details">
                         <a href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/Pharmacist-and-the-Changing-Healthcare-System.pdf") %>"><div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Pharmacist-and-the-Changing-Healthcare-System</h3>
                      </a>  <p>
                             Pharmacist-and-the-Changing-Healthcare-System
                        </p>
                        
                    </div>  
                </div>
            </div>


    <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                   <img class="img-responsive" src="images/works/CMS-updates-on-Ambulance-Services.jpg" alt="CMS-updates-on-Ambulance-Services">
                  <div class="mix-details">
                   <a href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/CMS-updates-on-Ambulance-Services.pdf") %>">      <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>CMS-updates-on-Ambulance-Services</h3>
                       </a> <p>
                             CMS-updates-on-Ambulance-Services
                        </p>
                        
                    </div>  
                </div>
            </div>

            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                   
                   <img class="img-responsive" src="images/works/info1.jpg" alt="Practice management survey"><div class="mix-details">
                        <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/survey_opt.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                       <h3>Practice management survey</h3></a>
                        <p>
                             A view on data we gathered through our Practice Management Survey
                        </p>
                        <!--<a class="mix-link">
                            <i class="fa fa-link"></i>
                        </a>
                        <a class="mix-preview fancybox-button" href="images/works/img1.jpg" title="Project Name" data-rel="fancybox-button">
                            <i class="fa fa-search"></i>
                        </a>-->
                    </div>
                    
                </div>
            </div>
            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                     <img class="img-responsive" src="images/works/info7.jpg" alt="ICD-10 - Checklist for Practices"><div class="mix-details">
                        <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/ICD-10 checklist.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                       <h3>ICD-10 - Checklist for Practices</h3></a>
                        <p>
                            Refer to the checklist to ensure your readiness
                        </p>
                        <!--<a class="mix-link">
                            <i class="fa fa-link"></i>
                        </a>
                        <a class="mix-preview fancybox-button" href="images/works/img1.jpg" title="Project Name" data-rel="fancybox-button">
                            <i class="fa fa-search"></i>
                        </a>-->
                    </div>
                </div>
            </div>
            
            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                   <img class="img-responsive" src="images/works/info8.jpg" alt="Strain of Sports- ICD-10 Codes">
                    <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/radiology-billing-infograph.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Strain of Sports- ICD-10 Codes</h3></a>
                        <p>
                            Some sport stars experiencing ailments, with their ICD-10 codes
                        </p>
                        
                    </div>
                   
                </div>
            </div>
            
            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/info9.jpg" alt="Podiatry">
                    <div class="mix-details">
                      <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/podiatry-billing-infograph.pdf") %>">   <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Podiatry</h3></a>
                        <p>
                            Know how's of Podiatry Billing
                        </p>
                        
                    </div>
                    
                </div>
            </div>
            
       
            
         
            
           
           <div>
							
							</div>
            
        </div> 
                    </div>
                <div id="page3">
            <div class="row mix-grid thumbnails mwidth-section">

                     <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    
                    <img class="img-responsive" src="images/works/info10.jpg" alt="Neurology">
                    <div class="mix-details">
                          <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/neurologists-billing-infograph.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Neurology</h3>
                        </a>
                              <p>
                           Thing’s to know about Neurology Billing
                        </p>
                        
                    </div>
                    
                   
                </div>
            </div>
                   <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                     <img class="img-responsive" src="images/works/info11.jpg" alt="Internal Medical">
                    <div class="mix-details">
                   <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/internal-medical-billing-infograph.pdf") %>">      <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Internal Medical</h3>
                       </a> <p>
                             End to End process of Internal Medicine Billing
                        </p>
                        
                    </div>
                    
                </div>
            </div>
            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                 <img class="img-responsive" src="images/works/info12.jpg" alt="ICD-10">
                    <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/icd-10-billing-infograph.pdf") %>"><div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>ICD-10</h3>
                      </a>  <p>
                         Understand ICD 10 in an easy way
                        </p>
                        
                    </div>
                 
                 
                </div>
            </div>
            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                   
                     <img class="img-responsive" src="images/works/info13.jpg" alt="General Surgery">
                    <div class="mix-details">
                        <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/general-surgery-billing-infograph.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                       <h3>General Surgery</h3></a>
                        <p>
                           Thing’s to know about General Surgery Billing
                        </p>
                        <!--<a class="mix-link">
                            <i class="fa fa-link"></i>
                        </a>
                        <a class="mix-preview fancybox-button" href="images/works/img1.jpg" title="Project Name" data-rel="fancybox-button">
                            <i class="fa fa-search"></i>
                        </a>-->
                    </div>
                   
                   
                   
                   
                   
                </div>
            </div>
            
            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                     <img class="img-responsive" src="images/works/info14.jpg" alt="Gastroenterology">
                    <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/gastroenterology-billing-infograph.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Gastroenterology</h3></a>
                        <p>
                           Check the above Infograph on Gastroenterology Billing process
                        </p>
                        
                    </div>
                    
                    
                    
                </div>
            </div>
           
          <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                  
                  <img class="img-responsive" src="images/works/info15.jpg" alt="Family Practice">
                    <div class="mix-details">
                      <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/family-practice-billing-infograph.pdf") %>">   <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Family Practice</h3></a>
                        <p>
                         Know the “How’s” of Family Practice Billing
                        </p>
                        
                    </div>
                   
                </div>
            </div>
             <!--future use-->
         



               










            
       
                        <!--future use end-->
           
           <div>
								
							</div>
            
        </div>
            
        </div>
         <div id="page4">
            <div class="row mix-grid thumbnails mwidth-section">
          <!--future use-->
            
                   <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    
                     <img class="img-responsive" src="images/works/info16.jpg" alt="Cardiology">
                    <div class="mix-details">
                          <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/cardiology-billing-infograph.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Cardiology</h3>
                        </a>
                              <p>
                          End to End process of a Cardiology Billing service
                        </p>
                        
                    </div>
                    
                    
                   
                </div>
            </div>

                  <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                  
                  
                   <img class="img-responsive" src="images/works/info4.jpg" alt="Practice Administration">
                    <div class="mix-details">
                          <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/a-day-in-the-doctors-life.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Practice Administration</h3>
                        </a>
                              <p>
                             A day in the doctor’s life
                        </p>
                        
                    </div>
                  
                  
                  
                  
                  
                  
             
                </div>
            </div>

                <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                         <img class="img-responsive" src="images/works/info3.jpg" alt="Medical Billing Services">
                    <%--<img class="img-responsive" src="images/works/CMS-updates-on-Ambulance-Services.jpg" alt="CMS-updates-on-Ambulance-Services">--%>

                    <div class="mix-details">
                      <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/medical-billing-services.pdf") %>">   <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Medical Billing Services</h3></a>
                        <p>
                             We are the RCM champions
                        </p>
                        
                    </div>
                  
          
                </div>
            </div>

                   <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                             <img class="img-responsive" src="images/works/info2.jpg" alt="Factors affecting practice collections">
                    <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/factors-affecting-practice-collections.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Factors affecting practice collections</h3></a>
                        <p>
                           Most common factors that affect Collections of your Practice
                        </p>
                        
                    </div>
                   
                  
                </div>
            </div>

                   <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    
                      <img class="img-responsive" src="images/works/info6.jpg" alt="Radiology">
                    <div class="mix-details">
                         <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/radiology-billing-infograph.pdf") %>"><div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Radiology</h3>
                      </a>  <p>
                            Check the above Infograph to understand Radiology Billing
                        </p>
                        
                    </div>
                    
                </div>
            </div>
                <div class="col-md-4 col-sm-6 mix">
                    <div class="mix-inner">
                        <img class="img-responsive" src="images/works/info5.jpg" alt="Billing Practices">
                        <div class="mix-details">
                            <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/five-parameters-to-evaluate-a-billing-company.pdf") %>">
                                <div class="info-icon-hover">
                                    <img src="images/icons/infographs-onhover.png"></div>
                                <h3>
                                    Billing Practices</h3>
                            </a>
                            <p>
                                5 Parameters to Evaluate a Billing Company
                            </p>
                        </div>
                    </div>
                </div>




            
            <%--<div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/info15.jpg" alt="">
                    <div class="mix-details">
                      <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/family-practice-billing-infograph.pdf") %>">   <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Family Practice</h3></a>
                        <p>
                         Know the “How’s” of Family Practice Billing
                        </p>
                        
                    </div>
                </div>
            </div>
            
         <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/info16.jpg" alt="">
                    <div class="mix-details">
                          <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/cardiology-billing-infograph.pdf") %>"> <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Cardiology</h3>
                        </a>
                              <p>
                          End to End process of a Cardiology Billing service
                        </p>
                        
                    </div>
                </div>
            </div>
            
           <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/CMS-updates-on-Ambulance-Services.jpg" alt="CMS-updates-on-Ambulance-Services">
                    <div class="mix-details">
                   <a href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/CMS-updates-on-Ambulance-Services.pdf") %>">      <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>CMS-updates-on-Ambulance-Services</h3>
                       </a> <p>
                             CMS-updates-on-Ambulance-Services
                        </p>
                        
                    </div>
                </div>
            </div>
            
            <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/Pharmacist-and-the-Changing-Healthcare-System.jpg" alt="">
                    <div class="mix-details">
                         <a href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/Pharmacist-and-the-Changing-Healthcare-System.pdf") %>"><div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Pharmacist-and-the-Changing-Healthcare-System</h3>
                      </a>  <p>
                             Pharmacist-and-the-Changing-Healthcare-System
                        </p>
                        
                    </div>
                </div>
            </div>--%>
                        <!--future use end-->
           
           <div>
								
							</div>
            
        </div>
            
        </div>
           <script>
               $(function () {
                   $('#page1').show();
                   $('#page2').hide();
                   $('#page3').hide();
                   $('#page4').hide();
               })

               function page1_show()
               {
                   $('#page1').show();
                   $('#page2').hide();
                   $('#page3').hide();
                   $('#page4').hide();
               }

               function page2_show() {
                   $('#page1').hide();
                   $('#page2').show();
                   $('#page3').hide();
                   $('#page4').hide();
               }
               function page3_show() {
                   $('#page1').hide();
                   $('#page2').hide();
                   $('#page3').show();
                   $('#page4').hide();
               }
               function page4_show() {
                   $('#page1').hide();
                   $('#page2').hide();
                   $('#page3').hide();
                   $('#page4').show();
               }


           </script>
              <ul class="pagination">
									<%--<li>
										<a href="#">
											<i class="fa fa-angle-left"></i>
										</a>
									</li>--%>
                                    <li>
										<a onclick="page1_show()" class="active" style="cursor: pointer;"  >
                                            1
										</a>
									</li>
									<li>
										<a  onclick="page2_show()" style="cursor: pointer;" >
											2
										</a>
									</li>
									<li>
										<a onclick="page3_show()" style="cursor: pointer;"  >
											3
										</a>
									</li>
									<li>
										<a onclick="page4_show()" style="cursor: pointer;"  >
											4
										</a>
									</li>
								<%--	<li>
										<a href="#">
											<i class="fa fa-angle-right"></i>
										</a>
									</li>--%>
								</ul>
           </div></div></div>
       
   <%-- </div>
        <?php include ('includes/footer.php'); ?>

    </div><!--/.cd-main-content end -->--%>
    
 <%--   <div class="cd-overlay"></div>--%>

<%--<script src="libraries/jquery-1.11.1.min.js"></script>
    <!-- Dropdown Menu -->
    <!--<script src="libraries/menu/js/cbpHorizontalMenu.min.js"></script>-->
    <script src="libraries/new-menu.js"></script>
    
	<script src="libraries/sliding-reload/slidingwithreload.js"></script>--%>


<script src="libraries/plugins/jquery-migrate-1.2.1.min.js" type="text/javascript"></script>
<script src="libraries/plugins/bootstrap/js/bootstrap.min.js" type="text/javascript"></script>

<script src="libraries/plugins/jquery-slimscroll/jquery.slimscroll.min.js" type="text/javascript"></script>

<!-- END CORE PLUGINS -->
<!-- BEGIN PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="libraries/plugins/jquery-mixitup/jquery.mixitup.min.js"></script>
<script type="text/javascript" src="libraries/plugins/fancybox/source/jquery.fancybox.pack.js"></script>
<!-- END PAGE LEVEL PLUGINS -->
<script type="text/javascript" src="libraries/scripts/core/app.js"></script>
<script  type="text/javascript" src="libraries/scripts/custom/portfolio.js"></script>

<script type="text/javascript">
    jQuery(document).ready(function () {
        App.init();
        Portfolio.init();
    });
</script>


</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder2" runat="Server">
</asp:Content>
