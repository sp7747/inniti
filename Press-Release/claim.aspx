<%@ Page Language="C#" ValidateRequest="false" MasterPageFile="~/Site.master" AutoEventWireup="true"CodeFile="claim.aspx.cs" Inherits="Press_Release_claim" %>
<asp:Content ID="Content3"  ContentPlaceHolderID="head" Runat="Server">
title</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="headMeta" runat="Server">
<meta name="description" content=desc />
 <meta name="Keywords" content=key />
</asp:Content>
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
<section id="main-slider" class="no-margin">
<div class="carousel slide">
<div class="carousel-inner">
<figure style="margin:32px -1px 0px 0px">
<img src="Images/innity-about-image.jpg" />
</figure>
<div class="container">
</div>
</div>
</div>
<!--/.carousel-inner-->
</section>
<!--/#main-slider-->
<section id="feature" >
<div class="container">
<div class="center wow fadeInDown">
<h1 style="margin-top:22px">
Press Release
</h1>
<h4>
<asp:literal id="output" runat="server"/>
<asp:label id="outputlabel" runat="server"/>
<h4>
</div>
<BR />
<div class="center wow fadeInDown">
</div>
<div class="row"><div class="col-sm-8" style="padding: 0px 25px 0px 0px;">
<div class="features" style="text-align:justify">
<p>
<asp:literal id="output2" runat="server"/>
</p>
<p>
<asp:literal id="output3" runat="server"/>
</p>
<p>
<asp:literal id="output4" runat="server"/>
<div id="blogurlLink"  runat="server">
</div>
<p>
<asp:literal id="output14" runat="server"/>
</p>
<h4>
<asp:literal id="output5" runat="server"/>
</h4>
<p>
<asp:literal id="output6" runat="server"/>
</p>
<p>
<asp:literal id="output7" runat="server"/>
</p>
</div>
<!--/.services-->
</div>
<div class="col-sm-4" style="border: 2px solid #06BBCC;border-radius: 10px;padding: 26px;margin: 7px -9px;}">
</div>
<!--/.services-->
<div class="modal fade" id="myModal" role="dialog">
</div>
</div>
</div><!--/.row-->
</section>
<!--/#feature-->
<div style="margin:0px 0px 0px 90px">
<p><b>Email: <a href="mailto:info@innitialliance.com">info@innitialliance.com</a></b></p><br />
<p><b>Contact:</b></p><br />
<p>Prerna Gupta, Media Relations</p><br />
<p>4625 Morse RD., Suite 206</p><br />
<p>Gahanna, Ohio 43230</p><br />
<p><b>Call: +1 (888)-452-1962</b>
</p> <br />
</div>
</asp:Content>
