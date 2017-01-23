<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="press-release.aspx.cs" Inherits="press_release" %>

<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">Press-Release | Inniti Alliance</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="headMeta" runat="Server">
    <meta name="description" content="Inniti Alliance is a partner of excellence for the Insurance , Financial Services & Healthcare Industry. Find out more about us here." />
    <meta name="Keywords" content="about us, about inniti, inniti alliance" />
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
	<style>.billing-insight-area {
    background: #f8f8f9;
    margin-bottom: 15px;
    display: inline-block;
    width: 94%;
    /*padding-left: 130px;*/
    padding-right: 10px;
}

.billing-insight-date {
    width: 170px !important;
    margin: 8px 31px 0 0px;
}

.billing-insight-info {
    float: left;
    padding: 10px 10px 10px 25px;
    border-left: 1px solid #d1d1d1;
    width: 100%;
}
.billing-insight-info ul.list-inline {
    padding: 0;
}

.update-month {
    font-size: 16px;
    margin: 0;
    text-transform: uppercase;
    padding: 0 0 6px;
}

	    .text-blue {color:#01B1C7 !important
	    }

	</style>

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
          
            <div class="carousel-inner">
  <figure style="margin:32px -1px 0px 0px">
                                                                   <img src="Images/innity-about-image.jpg" />
                                                                                            </figure>

              
                    <div class="container">
                    
                    </div>
                </div>
            </div><!--/.carousel-inner-->
        


    </section><!--/#main-slider-->

    <section id="feature" >
        <div class="container">
           <div class="center wow fadeInDown"  >
     
                <h1 style="margin-top:22px">Press Release </h1> 
               <h4> </h4>
             
            </div>
<BR />
<div class="center wow fadeInDown">
              <%--  <h3 style="font-weight:bold">OUR VISION</h3>--%>
           
            </div>
           <div class="col-sm-8">
            <div class="row">
                <div class="features">
                 

                    
                      <div class="billing-insight-area">
                             
                          <div class="col-sm-2" style="padding:22px;">
                        <div class="billing-insight-date">
                                <p class="update-month">
                            Dec 8, 2016
                               
                                </p>
                                
                            </div> </div>
                          <div class="col-sm-10">
                             <div class="billing-insight-info">
                       <a style="color:#01B1C7" href="/Inniti-Alliance-Helps-Insurance-Companies-to-Boost-ROI-up-to-20.aspx"><h5 class="text-blue">Inniti Alliance Helps Insurance Companies to Boost ROI up to 20%</h5>
                                </a>
                        <ul class="list-inline">
                                        <li><a href="/Inniti-Alliance-Helps-Insurance-Companies-to-Boost-ROI-up-to-20.aspx" class="btn-slide animation animated-item-3" 
style="padding: 8px 12px;
background: #01B1C7;
color: #fff;
border-radius: 4px;
margin-top: 10px;
display:inline-block;
width: 91px;">Read More</a></li>
                                        </ul>
                          </div>
                        </div>
                      
                            </div><div class="billing-insight-area">
                             
                          <div class="col-sm-2" style="padding:22px;">
                        <div class="billing-insight-date">
                                <p class="update-month">
                            Nov 22, 2016
                               
                                </p>
                                
                            </div> </div>
                          <div class="col-sm-10">
                             <div class="billing-insight-info">
                       <a style="color:#01B1C7" href="/Partnering-with-Inniti-Alliance-reduces-your-Operational-Costs-and-Streamlines-the-Work-Process.aspx"><h5 class="text-blue">Partnering with Inniti Alliance reduces your Operational Costs & Streamlines the Work Process</h5>
                                </a>
                        <ul class="list-inline">
                                        <li><a href="/Partnering-with-Inniti-Alliance-reduces-your-Operational-Costs-and-Streamlines-the-Work-Process.aspx" class="btn-slide animation animated-item-3" 
style="padding: 8px 12px;
background: #01B1C7;
color: #fff;
border-radius: 4px;
margin-top: 10px;
display:inline-block;
width: 91px;">Read More</a></li>
                                        </ul>
                          </div>
                        </div>
                      
                            </div>
                </div>
                  
                </div><!--/.services-->
            </div><!--/.row-->    
        </div><!--/.container-->
    </section><!--/#feature-->





</asp:Content>