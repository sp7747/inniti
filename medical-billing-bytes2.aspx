<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="medical-billing-bytes2.aspx.cs" Inherits="medical_billing_bytes2" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">
    <div class="container">

<link href="libraries/plugins/fancybox/source/jquery.fancybox.css" rel="stylesheet" type="text/css"/>
    

    <link href="libraries/css/pages/portfolio.css" rel="stylesheet" />

<!-- Slide trigger start here -->
<?php include ('includes/slide-trigger.php'); ?> 
<!-- Slide trigger end here --> 
      
    <div class="cd-main-content">

        <div class="">
            <div class="container">
                <?php include ('includes/navigation.php'); ?>
            </div>

        </div>
        <!--change-->
        
             <div class="banner-inner baner-bg-blue-light">
                <div class="container">
                    <div class="col-sm-7">
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

                

                oooooooooooo
                <asp:Repeater ID="Rep_infograph" runat="server" >
                    <ItemTemplate>
                        <tr>
                            <td><%# Eval("Name") %></td>
                              <td><%# Eval("Description")%></td>
                             <td><%# Eval("[PDFFile]")%></td>
                             <asp:Label ID="lblCustomerId" runat="server" Text='<%# Eval("Name").ToString()%>' />
                        </tr>
                    </ItemTemplate>
                </asp:Repeater>
              
        </div> 
           
               </div>
            <div id="page2">   
                <div class="row mix-grid thumbnails mwidth-section">

           <div>
							
							</div>
            
        </div> 
                    </div>
                <div id="page3">
            <div class="row mix-grid thumbnails mwidth-section">



                  <div class="col-md-4 col-sm-6 mix">
                <div class="mix-inner">
                    <img class="img-responsive" src="images/works/info9.jpg" alt="Podiatry">
                    <div class="mix-details">
                      <a target="_blank" href="<%= string.Concat(Request.ApplicationPath,ConfigurationManager.AppSettings["Slash"],"medical-billing-bytes/podiatry-billing-infograph.pdf") %>">   
                          <div class="info-icon-hover"><img src="images/icons/infographs-onhover.png"></div>
                        <h3>Podiatry</h3></a>
                        <p>
                            Know how's of Podiatry Billing
                        </p>
                        
                    </div>
                    
                </div>
            </div>
            
             <!--future use-->
         
           <div>
								
							</div>
            
        </div>
            
        </div>
         <div id="page4">
            <div class="row mix-grid thumbnails mwidth-section">
          <!--future use-->
            
              
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

               function page1_show() {
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
								
								</ul>
           </div></div></div>


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
