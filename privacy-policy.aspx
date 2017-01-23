<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="privacy-policy.aspx.cs" Inherits="privacy_policy" %>

<%--<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>

--%>

	<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">Privacy Policy | Inniti Alliance</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="headMeta" runat="Server"><%--<meta name="description" content="Inniti Alliance is a partner of excellence for the Insurance , Financial Services & Healthcare Industry. Find out more about us here." />
    <meta name="Keywords" content="Privacy-Policy, inniti alliance" />--%>
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
   <%-- <hgroup class="title">
        <h1><%: Title %>.</h1>
        <h2>Your app description page.</h2>
    </hgroup>

    <article>
        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>

        <p>        
            Use this area to provide additional information.
        </p>
    </article>

    <aside>
        <h3>Aside Title</h3>
        <p>        
            Use this area to provide additional information.
        </p>
        <ul>
            <li><a runat="server" href="~/">Home</a></li>
            <li><a runat="server" href="~/About">About</a></li>
            <li><a runat="server" href="~/Contact">Contact</a></li>
        </ul>
    </aside>--%>



    <%--first--%>



  <%--  <section id="about-us">
        <div class="container">
			<div class="center wow fadeInDown">
				<h2>About Corlate</h2>
				<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
			</div>
			
			<!-- about us slider -->
			<div id="about-slider">
				<div id="carousel-slider" class="carousel slide" data-ride="carousel">
					<!-- Indicators -->
				  	<ol class="carousel-indicators visible-xs">
					    <li data-target="#carousel-slider" data-slide-to="0" class="active"></li>
					    <li data-target="#carousel-slider" data-slide-to="1"></li>
					    <li data-target="#carousel-slider" data-slide-to="2"></li>
				  	</ol>

					<div class="carousel-inner">
						<div class="item active">
							<img src="images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div>
					   <div class="item">
							<img src="images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div> 
					   <div class="item">
							<img src="images/slider_one.jpg" class="img-responsive" alt=""> 
					   </div> 
					</div>
					
					<a class="left carousel-control hidden-xs" href="#carousel-slider" data-slide="prev">
						<i class="fa fa-angle-left"></i> 
					</a>
					
					<a class=" right carousel-control hidden-xs"href="#carousel-slider" data-slide="next">
						<i class="fa fa-angle-right"></i> 
					</a>
				</div> <!--/#carousel-slider-->
			</div><!--/#about-slider-->
			
			
			<!-- Our Skill -->
			<div class="skill-wrap clearfix">
			
				<div class="center wow fadeInDown">
					<h2>Our Skill</h2>
					<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
				</div>
				
				<div class="row">
		
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="joomla-skill">                                   
								<p><em>85%</em></p>
								<p>Joomla</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="html-skill">                                  
								<p><em>95%</em></p>
								<p>HTML</p>
							</div>
						</div>
					</div>
					
					<div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="900ms">
							<div class="css-skill">                                    
								<p><em>80%</em></p>
								<p>CSS</p>
							</div>
						</div>
					</div>
					
					 <div class="col-sm-3">
						<div class="sinlge-skill wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="1200ms">
							<div class="wp-skill">
								<p><em>90%</em></p>
								<p>Wordpress</p>                                     
							</div>
						</div>
					</div>
					
				</div>
	
            </div><!--/.our-skill-->
			

			<!-- our-team -->
			<div class="team">
				<div class="center wow fadeInDown">
					<h2>Team of Corlate</h2>
					<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>
				</div>

				<div class="row clearfix">
					<div class="col-md-4 col-sm-6">	
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="images/man1.jpg" alt=""></a>
								</div>
								<div class="media-body">
									<h4>Jhon Doe</h4>
									<h5>Founder and CEO</h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#">Web</a></li>
										<li class="btn"><a href="#">Ui</a></li>
										<li class="btn"><a href="#">Ux</a></li>
										<li class="btn"><a href="#">Photoshop</a></li>
									</ul>
									
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
						</div>
					</div><!--/.col-lg-4 -->
					
					
					<div class="col-md-4 col-sm-6 col-md-offset-2">	
						<div class="single-profile-top wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="300ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="images/man2.jpg" alt=""></a>
								</div>
								<div class="media-body">
									<h4>Jhon Doe</h4>
									<h5>Founder and CEO</h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#">Web</a></li>
										<li class="btn"><a href="#">Ui</a></li>
										<li class="btn"><a href="#">Ux</a></li>
										<li class="btn"><a href="#">Photoshop</a></li>
									</ul>
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
						</div>
					</div><!--/.col-lg-4 -->					
				</div> <!--/.row -->
				<div class="row team-bar">
					<div class="first-one-arrow hidden-xs">
						<hr>
					</div>
					<div class="first-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="second-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
					<div class="third-arrow hidden-xs">
						<hr> <i class="fa fa-angle-up"></i>
					</div>
					<div class="fourth-arrow hidden-xs">
						<hr> <i class="fa fa-angle-down"></i>
					</div>
				</div> <!--skill_border-->       

				<div class="row clearfix">   
					<div class="col-md-4 col-sm-6 col-md-offset-2">	
						<div class="single-profile-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="images/man3.jpg" alt=""></a>
								</div>

								<div class="media-body">
									<h4>Jhon Doe</h4>
									<h5>Founder and CEO</h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#">Web</a></li>
										<li class="btn"><a href="#">Ui</a></li>
										<li class="btn"><a href="#">Ux</a></li>
										<li class="btn"><a href="#">Photoshop</a></li>
									</ul>
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
						</div>
					</div>
					<div class="col-md-4 col-sm-6 col-md-offset-2">
						<div class="single-profile-bottom wow fadeInUp" data-wow-duration="1000ms" data-wow-delay="600ms">
							<div class="media">
								<div class="pull-left">
									<a href="#"><img class="media-object" src="images/man4.jpg" alt=""></a>
								</div>
								<div class="media-body">
									<h4>Jhon Doe</h4>
									<h5>Founder and CEO</h5>
									<ul class="tag clearfix">
										<li class="btn"><a href="#">Web</a></li>
										<li class="btn"><a href="#">Ui</a></li>
										<li class="btn"><a href="#">Ux</a></li>
										<li class="btn"><a href="#">Photoshop</a></li>
									</ul>
									<ul class="social_icons">
										<li><a href="#"><i class="fa fa-facebook"></i></a></li>
										<li><a href="#"><i class="fa fa-twitter"></i></a></li> 
										<li><a href="#"><i class="fa fa-google-plus"></i></a></li>
									</ul>
								</div>
							</div><!--/.media -->
							<p>There are many variations of passages of Lorem Ipsum available, but the majority have suffered alteration in some form, by injected humour, or randomised words which don't look even slightly believable.</p>
						</div>
					</div>
				</div>	<!--/.row-->
			</div><!--section-->
		</div><!--/.container-->
    </section><!--/about-us-->--%>



    
    <%--first--%>

	
 
   

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <%--<ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
                <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>
            </ol>--%>
            <div class="carousel-inner">
  <figure style="margin: 29px -73px -11px 0px;"><%--margin:32px -1px 0px 0px--%>
                                                                   <img src="Images/privacy-policy2.jpg" style="padding: 20px 0px 0px;"  alt="privacy-policy"/>
                                                                                            </figure>

               <%-- <div class="item active" style="background-image: url(images/innity-about-image.jpg)">--%>
                    <div class="container">
                      <%--  <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1"></h1>--%>
                                   <%-- <h2 class="animation animated-item-2">Accusantium doloremque laudantium totam rem aperiam, eaque ipsa...</h2>--%>
                                  <%--  <a class="btn-slide animation animated-item-3" href="#">Read More</a>--%>
                             <%--   </div>
                            </div>--%>

                            <%--man image--%>



                          <%--  <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img1.png" class="img-responsive">
                                </div>
                            </div>--%>

                              <%--man image--%>

                      <%--  </div>--%>
                    </div>
                </div><!--/.item-->

<%--                slider--%>


              <%--  <div class="item" style="background-image: url(images/slider/bg2.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Lorem ipsum dolor sit amet consectetur adipisicing elit</h1>
                                    <h2 class="animation animated-item-2">Accusantium doloremque laudantium totam rem aperiam, eaque ipsa...</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                </div>
                            </div>

                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img2.png" class="img-responsive">
                                </div>
                            </div>

                        </div>
                    </div>
                </div><!--/.item-->

                <div class="item" style="background-image: url(images/slider/bg3.jpg)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                    <h1 class="animation animated-item-1">Lorem ipsum dolor sit amet consectetur adipisicing elit</h1>
                                    <h2 class="animation animated-item-2">Accusantium doloremque laudantium totam rem aperiam, eaque ipsa...</h2>
                                    <a class="btn-slide animation animated-item-3" href="#">Read More</a>
                                </div>
                            </div>
                            <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img3.png" class="img-responsive">
                                </div>
                            </div>
                        </div>
                    </div>
                </div><!--/.item-->--%>
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->


        <%--slider--%>
       <%-- <a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>--%>
    </section><!--/#main-slider-->

    <section id="feature" >
        <div class="container">
          <%-- <div class="center wow fadeInDown"  >
                <h1 style="margin-top:22px">Privacy-Policy</h1> 
               <h4>At Inniti, we respect an individual’s right to privacy. Our company protects the confidentiality of your personal information with the help of a strict privacy policy. Our policies have been designed to let you know how we collect and use your information and how we comply with applicable laws and obligations.</h4>
                <%--<p class="lead">Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut <br> et dolore magna aliqua. Ut enim ad minim veniam</p>--%>
          <%--  </div>
<BR />--%>

                           <div class="center wow fadeInDown animated" style="visibility: visible; animation-name: fadeInDown;">
                <h1>Privacy Policy
                                 </h1></div>
                              <div class="panel-body1">
                                  <div class="row">
                                    <div class="col-md-11">
                                        <div class="media accordion-inner">
                                        <div class="pull-left">
                                            <%--<img class="img-responsive" src="images/accordion1.png">--%>
                                        </div>
                                        <div class="media-body">
                                            
                                             <p>At Inniti, we respect an individual’s right to privacy. Our company protects the confidentiality of your personal information with the help of a strict privacy policy. Our policies have been designed to let you know how we collect and use your information and how we comply with applicable laws and obligations.</p>
                                           
                                     <h5 style="padding:10px 0px 0px 3px"><strong>Information Collection</strong></h5>  
                                             <p>When you visit our website and request for information or services thereon, you agree to the terms and conditions of our privacy policy. Website asks for your full name, job title and email address once you undertake to register yourself with us to receive email alerts. </p>
                                        <p>Personal data is collected to provide you with services that you have requested. It is used for responding to an enquiry that you have made. We work in co-ordination with reputed third party agencies to provide these services to you such as, email alerting, web casting and hosting.</p>
                                          <p>Information is collected only for business purposes. While collecting information, we ensure that the person providing the information has knowledge of the information being collected, why it is being collected and who are the intended recipients of the data. You can review the information you have provided, if need arises.</p>  
              <h5 style="padding:10px 0px 0px 3px"><strong>Use of Information</strong></h5>   </div>
              
              <p>Information you provide at Inniti Alliance is treated with utmost security and care. Maintaining the confidentiality of your data is our priority. We make sure it is not used in ways to which you have not consented.
              </p>
              <p>We don’t retain information after the purpose for which it was collected is accomplished. However, in some cases, it can be retained under a law in force or for audit purposes. If this is the case, we maintain the privacy of this data as per the data retention policy of our company.
              </p>                    
              <p>Our company doesn’t sell your personal data or any type of identifiable information that is collected on our website. The data acquired through our email alert service is not used for marketing purposes unless you have indicated that we can do so on the registration page.</p>
             <p>
             You have the option to opt out from receiving alerts or email communications from us. You can let us know by sending an email to <a href="mailto:info@innitialliance.com" >info@innitialliance.com</a></p>
             
              <p>We don’t retain information after the purpose for which it was collected is accomplished. However, in some cases, it can be retained under a law in force or for audit purposes. If this is the case, we maintain the privacy of this data as per the data retention policy of our company.
              </p>
             <h5 style="padding:10px 0px 0px 3px"><strong>Security Practices and Procedures</strong></h5>  
              <p>We use the best security practices and procedures to prevent unauthorized access or disclosure of your personal information. These practices comprise of technical, managerial, physical security and operational controls.
              </p>
               <h5 style="padding:10px 0px 0px 3px"><strong>Cookies and Log File Usage</strong></h5>  
             <p>Cookies don’t contain any personal data about users. They are small text files written to a web user’s hard drive. Cookies only record areas of the website that have been visited by the computer in question. In order to track traffic flows, cookies are used by websites. 
              </p>
              <p>Our company may also use them from time to time. This will be done to offer certain time-saving features to our users, to administer the website, track movements and actions of users and to gather demographic information for our use. 
              </p>
              <h5 style="padding:10px 0px 0px 3px"><strong>Hyperlinks</strong></h5>  <p>
             Our website contains links to other sites; however, their inclusion cannot be taken to imply any validation or endorsements by us of the content on those sites. We are not in any way, responsible for the privacy practices of these sites, nor do we accept any liability in connection with the content of these sites.  </p>
             <h5 style="padding:10px 0px 0px 3px"><strong>Privacy Policy Changes</strong></h5><p>Please note that we may revise our Privacy Policies from time to time. This will be done to keep up with the changes in legislation and best practices. To keep abreast with any changes to our policies, we request you to visit our website periodically. Our privacy policy is subject to and in conjunction with our terms. </p>
              </div>
              
                                        </div>
                                     <%-- <div class="col-md-4">
                                          <div class="media">
                                            <div class=" pull-left bread">
                                                <ul id="bd2" class="nav  nav-stacked" style="color:#000; margin:0;"  >
                                                    <li class="" style="border-bottom:5px solid #fff"><a href="application-upgradation.aspx"  class="analistic-01" style="color:#000"><img src="/icomoon/beadicons/application-upgradation.jpg" class="bredicon" alt="" /> Application Upgradation</a></li>
                                                    <li class="active" style="border-bottom:5px solid #fff"><a href="system-integration.aspx"  class="analistic-02" style="color:#000"><img src="/icomoon/beadicons/system-integration.jpg" class="bredicon" alt="" />System Integration</a></li>
                                                    <li class="" style="border-bottom:5px solid #fff"><a href="performance-engineering.aspx"  class="tehnical" style="color:#000"><img src="/icomoon/beadicons/performance-engineering.jpg" class="bredicon" alt="" />Performance Engineering</a></li>
                                                    <li class="" style="border-bottom:5px solid #fff"><a href="workflow-management.aspx" class="tehnical" style="color:#000"><img src="/icomoon/beadicons/workflow-management.jpg" class="bredicon" alt="" />Workflow Management</a></li>
     <%--                                               <li class="" style="border-bottom:5px solid #fff"><a href="#tab5" data-toggle="tab" class="tehnical" style="color:#000">Back to </a></li>--%>
                                               <%-- </ul>
                                            </div>--%><!--/.media-body--> 
                                        </div>
                                      </div>
                                      </div>
                                  
                              </div>
                            </div>  <%-- <p class="optimize">Benefit from our updated Application Management Process</p>--%>
                          </div>

                     











</asp:Content>


