<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="it-technology.aspx.cs" Inherits="it_technology" %>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

    
    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <ol class="carousel-indicators">
                <li data-target="#main-slider" data-slide-to="0" class="active"></li>
               <%-- <li data-target="#main-slider" data-slide-to="1"></li>
                <li data-target="#main-slider" data-slide-to="2"></li>--%>
            </ol>
            <div class="carousel-inner">



                   <div class="item active" style="background-image: url(images/IT-technology.JPG)">
                    <div class="container">
                        <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                                   <%-- <h1 class="animation animated-item-1">Your VISION,OUR service  & an OPTIMIZED FUTURE </h1>--%>
                                   <%-- <h2 class="animation animated-item-2">Accusantium doloremque laudantium totam rem aperiam, eaque ipsa...</h2>--%>
                                  <%--  <a class="btn-slide animation animated-item-3" href="#">Read More</a>--%>
                                </div>
                            </div>

                            <%--man image--%>



                          <%--  <div class="col-sm-6 hidden-xs animation animated-item-4">
                                <div class="slider-img">
                                    <img src="images/slider/img1.png" class="img-responsive">
                                </div>
                            </div>--%>

                              <%--man image--%>

                        </div>
                    </div>
                </div><!--/.item-->

<%--                <div class="item" style="background-image: url(images/slider/bg2.jpg)">
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
        <%--<a class="prev hidden-xs" href="#main-slider" data-slide="prev">
            <i class="fa fa-chevron-left"></i>
        </a>
        <a class="next hidden-xs" href="#main-slider" data-slide="next">
            <i class="fa fa-chevron-right"></i>
        </a>--%>
    </section><!--/#main-slider-->

    <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown">
                <h1>IT Technology</h1>
                <p class="lead">A good IT strategy is crucial in today’s challenging business environment, which is why Inniti while developing its IT system has prioritized qualities like speed, flexibility and efficiency to provide a comprehensive IT solution for its customers. Inniti delivers solutions across all of our customers IT needs, the areas mainly include-</p>
            </div>

            <div class="row">
                <div class="features">
                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-bullhorn"></i>
                            <h2>Application Development</h2>
                            <h3> We are complete with a well setup efficient process.</h3>
                            <a class="btn-slide animation animated-item-3" href="policy-admin.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-comments"></i>
                            <h2>Application up-gradation</h2>
                            <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>                                    <a class="btn-slide animation animated-item-3" href="claims-processing.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->

                    <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-cloud-download"></i>
                            <h2>System Integration </h2>
                            <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>                                    <a class="btn-slide animation animated-item-3" href="claims-analytics.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->
                 <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-cloud-download"></i>
                            <h2>Performance Engineering </h2>
                            <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>                                    <a class="btn-slide animation animated-item-3" href="claims-analytics.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->
                 <div class="col-md-4 col-sm-6 wow fadeInDown" data-wow-duration="1000ms" data-wow-delay="600ms">
                        <div class="feature-wrap">
                            <i class="fa fa-cloud-download"></i>
                            <h2>Workflow management </h2>
                            <h3>Lorem ipsum dolor sit amet, consectetur adipisicing elit</h3>                                    <a class="btn-slide animation animated-item-3" href="claims-analytics.aspx">Read More</a>
                        </div>
                    </div><!--/.col-md-4-->
                
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#feature-->













</asp:Content>

