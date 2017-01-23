<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DynamicPage.aspx.cs" Inherits="Press_prelease_DynamicPage" %>


<asp:Content ID="Content3" ContentPlaceHolderID="head" Runat="Server">Press-Release | Inniti Alliance</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="headMeta" runat="Server">
       <asp:Label ID="lblTitle" Visible="false"  runat="server" />
    <asp:Label ID="lblContent" Visible="false" runat="server" />
 
    <meta name="description" content="<%=lblTitle.Text%>" />
    <meta name="Keywords" content="<%=lblContent.Text%>" />
</asp:Content>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
  
	

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
          
            <div class="carousel-inner">
  <figure style="margin:32px -1px 0px 0px">
                                                           <%--        <img src="Images/innity-about-image.jpg" />--%>
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
               <h4>
                    <asp:Label ID="lbl_Main_head" runat="server" />
                  </h4>
             
            </div>
<BR />
<div class="center wow fadeInDown">
              <%--  <h3 style="font-weight:bold">OUR VISION</h3>--%>
           
             
            </div>

            <div class="row"><div class="col-sm-8" style="padding: 0px 25px 0px 0px;">
                <div class="features" style="text-align:justify">
                 <div id="inner_content" runat="server" >




                 </div> 
                 </div><!--/.services-->
            </div><!--/.row-->    
                
            <div class="col-sm-4" style="border: 2px solid #06BBCC;
    border-radius: 10px;
    padding: 26px;
    margin: 7px -9px;
}">
           
            <%--<div id="subscribe" class="modal-dialog modal-sm" style="width: 25%;">      
                <div class="modal-content"> --%>
                    <div>
                    <div class="modal-header">
                        <button type="button" class="close" data-dismiss="modal">
                            &times;</button>
                        <h4 style="padding: 29px; text-align: center; font-size: 22px;" class="modal-title">
                            Subscribe to our Press Release Via Email</h4>
                    </div>
                    <div class="modal-body">
                        <div>
                            <asp:TextBox ID="txt_Email" placeholder="Email" CssClass="form-control" Style="padding: 0px 0px 0px 13px;
                                margin: 0px 20px 20px 20px; width: 86%;" runat="server"></asp:TextBox>
                            <asp:RequiredFieldValidator ID="RequiredFieldValidator1" ControlToValidate="txt_Email"
                                runat="server" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                        <asp:Button ID="btn_subscribe" OnClick="btn_subscribe_Click" CssClass="btn btn-success"
                            Style="padding: 10px 24px 12px 25px; margin: 0px 20px 20px 65px; width: 50%;
                            background-color: #00B6C9;" runat="server" Text="Subscribe" />
                    </div></div>
                    
                    
                    
                    
                    
                    
            <div class="row">
                <div class="features">
                 

                    
                      <div class="billing-insight-area">
                             
                        <%--  <div class="col-sm-2" style="padding:22px;">
                        <div class="billing-insight-date">
                                <p class="update-month">
                            Dec 8, 2016
                               
                                </p>
                                
                            </div> </div>--%>
                          <asp:Label ID="lbl_sidelink"  Visible="false" runat="server" />
                          <div class="col-sm-1"></div> <div class="col-sm-10">
                             <div class="billing-insight-info">
 <a style="color:#01B1C7" href="<%=lbl_sidelink.Text%>.aspx">
 <h5 class="text-blue"><asp:Label ID="lbl_sidelink2" runat="server" /></h5>
                                </a>

                       <%--<a style="color:#01B1C7" href="payment-integrity-program–streamline-claims-management-to-reduce-administrative-costs.aspx"><h5 class="text-blue">Payment Integrity Program – Streamline Claims Management to Reduce Administrative costs</h5>
                                </a>--%>
                        <ul class="list-inline">
                                        <li><a href="<%=lbl_sidelink.Text%>.aspx" class="btn-slide animation animated-item-3" style="padding: 8px 12px;
background: #01B1C7;
color: #fff;
border-radius: 4px;
margin-top: 10px;
display:inline-block;
width: 91px;margin: 10px 81px;">Read More</a></li>
                                        </ul>
                          </div>
                        </div>  <div class="col-sm-1"></div>
                      
                            </div><div class="billing-insight-area">
                             
                       <%--   <div class="col-sm-2" style="padding:22px;">
                        <div class="billing-insight-date">
                                <p class="update-month">
                            Nov 22, 2016
                               
                                </p>
                                
                            </div> </div>--%>
                          </div> 
                            </div>
                </div>
                  
                </div>



        </div><!--/.container-->
    </section><!--/#feature-->




<div style="margin:0px 0px 0px 90px">

<p><b>Email: <a href="mailto : info@innitialliance.com">info@innitialliance.com</a></b></p><br />
<p><b>Contact: </b></p><br />
<p>Prerna Gupta, Media Relations</p><br />
<p>4625 Morse RD., Suite 206</p><br />
<p>Gahanna, Ohio 43230</p><br />
 
 <p><b>Call: +1 (888)-452-1962</b>
</p> <br />

    </div>
</asp:Content>