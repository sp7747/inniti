<%@ Page Language="C#" AutoEventWireup="true" MasterPageFile="~/Site.master"   CodeFile="Thanks.aspx.cs" Inherits="Thanks" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" runat="Server">Thanks You| Inniti Alliance
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="headMeta" runat="Server">
    <meta name="description" content="" />
    <meta name="Keywords" content="Thanks, inniti alliance" />
</asp:Content>

<asp:Content ID="Content1" ContentPlaceHolderID="FeaturedContent" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="MainContent" Runat="Server">

<%--    <script    type="text/javascript" >

        function preventMultipleSubmissions() {
            $('#<%=Button1.ClientID %>').prop('disabled', true);
   }

   window.onbeforeunload = preventMultipleSubmissions;

   function SwapDivsWithClick(div1, div2) {
       d1 = document.getElementById(div1);
       d2 = document.getElementById(div2);

       if (d2.style.display == "none") {
           d1.style.display = "none";
           d2.style.display = "block";
       }
       else {
           d1.style.display = "block";
           d2.style.display = "none";
       }
   }

</script>--%>

 <%--   <section id="contact-info">
      
<img src="Images/innity-contact-image.jpg" />
                        
              
    </section>  <!--/gmap_area -->
    
--%>


<section id="main-slider" class="no-margin">
        <div class="carousel slide">
          
            <div class="carousel-inner">
<figure>
                <div class="item active" style="background-image: url(images/innity-contact-image.jpg)">
                   </figure> <div class="container"><div class="center">
<%--<h4 style="font:bold solid">DataCare Pro LLC,</h4>
<h5> InnitiAlliance.com </h5>
<h5> 4625 Morse RD., Suite 206 </h5>
<h5> Gahanna, Ohio 43230 </h5>
</div>
 --%>                      <%-- <div class="row slide-margin">
                            <div class="col-sm-6">
                                <div class="carousel-content">
                               </div>
                            </div>
                        </div>--%>
                    </div>
                </div><!--/.item-->
            </div><!--/.carousel-inner-->
        </div><!--/.carousel-->

    </section>
    <section id="contact-page">
        <div class="container">
            <div  id="swapper2"   <%--style="display:none;padding:25px;"--%>>
<div class="alert alert-success">
<p style="  font-size: 50px;line-height: 1.2;margin: 35px;text-align: center;"><%--  color:#00b1c7;font:bold;--%>
Thank you for contacting us.</p><p style="font-size:25px;padding-bottom:20px"> We have received your query & one of our sales representative will get in touch with you shortly.
</p></div>
</div>
         <%--<p class="optimize">Let us help you in your endeavor to grow</p>--%>
        </div><!--/.container-->
    </section><!--/#contact-page-->

</asp:Content>

