<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="insurance-services.aspx.cs" Inherits="core_insurance_services" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">Insurance Claims Processing Companies | Core Insurance Services | Inniti Alliance</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="headMeta" runat="Server"><meta name="description" content="Inniti is one of the leading insurance claims processing companies in healthcare industry. Our core insurance services will help save time as well as cut operational costs. " />
    <meta name="Keywords" content="core insurance, services, claims processing, companies, enrollment, contract management, benefit validation, risk management, fraud detection" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">


    
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
              <%--  <li data-target="#main-slider" data-slide-to="0" class="active"></li>--%>
               <%-- <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>--%>
            </ol>
            <div class="carousel-inner">


  <figure>
                                                                   <img src="Images/core-insurance-services.JPG" />
                                                                                            </figure>



                  
                    <div class="container">
                       
                    </div>
                </div><!--/.item-->

            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->
       
    </section><!--/#main-slider-->

    <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h1>Core Insurance Services</h1>
                <p class="lead">Inniti’s deep industry knowledge and customer experience can help reduce risks and system intricacies, while core insurance services will help save time as well as cut operational costs.</p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                           <%-- <i class="fa fa-bullhorn"></i>--%>
                          <i alt="Enrollment" class="icon-enrollment"><span class="icon-enrollment">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span>
                </span></i> <a href="insurance-services-enrollment.aspx"><h2>Enrollment</h2></a> 
                            <h3 style="text-align:justify">Our end-to-end Enrollment Services help in making simpler the preliminary process by offering customers an enhanced experience... </h3>
                            <a style="float:left" <%--class="btn-slide animation animated-item-3"--%> href="insurance-services-enrollment.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div  class="feature-wrap" >
                           <%-- <i class="fa fa-comments"></i>--%><i alt="Contract Management" class="icon-contractmanagement">
<span class="icon-contractmanagement">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span>
                </span></i>
                           <a href="insurance-services-contract-management.aspx"><h2>Contract Management</h2></a> 
                            <h3 style="text-align:justify">Inniti's process expertise helps offer an all inclusive solution in contract management; allowing companies to work more efficiently...</h3>                                    
                            <a class="btn-slide animation animated-item-3" href="insurance-services-contract-management.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <%--<i class="fa fa-cloud-download"></i>--%>
                            <i alt="Benefit Validation" class="icon-benefitvalidation"><span class="icon-benefitvalidation">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span><span class="path4"></span><span class="path5"></span><span class="path6"></span><span class="path7"></span><span class="path8"></span><span class="path9"></span><span class="path10"></span><span class="path11"></span><span class="path12"></span><span class="path13"></span><span class="path14"></span>
                </span></i>
                          <a href="insurance-services-benefit-validation.aspx">  <h2>Benefit Validation</h2></a>
                            <h3 style="text-align:justify">Inniti's benefit validation service obtains all the data required, along with explaining to clients the plans to insure that expectations...</h3>                                    <a class="btn-slide animation animated-item-3" href="insurance-services-benefit-validation.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->

                      <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div alt="Risk Management" class="feature-wrap">
                            <%--<i class="fa fa-cloud-download"></i>--%><i class="icon-riskmanagement"><span class="icon-riskmanagement">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span>
                </span></i>
                           <a href="insurance-services-Risk-Management">  <h2>Risk Management</h2></a>
                            <h3 style="text-align:justify">Though it may be difficult to predict future trends in fraudulent activities, Inniti works towards being as creative as possible by using... </h3>                                    <a class="btn-slide animation animated-item-3" href="insurance-services-Risk-Management">Read More</a>
                        </div>
                    </div>

                      <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                        <i alt="Fraud Detection" class="icon-frauddetection"><span class="icon-frauddetection">
                <span class="path1"></span><span class="path2"></span><span class="path3"></span>
                </span></i>
                          <%--  <i class="fa fa-cloud-download"></i>--%>
                        <a href="insurance-services-fraud-detection.aspx"   ><h2>Fraud Detection</h2></a> 
                            <h3 style="text-align:justify">Inniti's risk management model focuses on foremost the organizational model, along with regulation compliance, risk identification...</h3>                                    <a class="btn-slide animation animated-item-3" href="insurance-services-fraud-detection.aspx">Read More</a>
                        </div>
                    </div>

                
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
        <p class="optimize">Offering optimum services growing your savings. Call our experts now!</p>
    </section><!--/#feature-->
 








</asp:Content>

