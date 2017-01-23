<%@ Control Language="C#" AutoEventWireup="true" CodeFile="Contact.ascx.cs" Inherits="user_control_Contact" %>
<%--<link href="../css/contact.css" rel="stylesheet" />
    <script    type="text/javascript" >

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
    <section id="contact-page">
        <div class="container">
<div  id ="swapper"> 
          
            <div class="row contact-wrap"> 
                <div class="status alert alert-success" style="display: none"></div>
              
                    <div class="col-sm-5 col-sm-offset-1">
                        <div class="form-group">
                            <label>Company Name</label>
                            <asp:TextBox ID="txt_compname" runat="server" CssClass="form-control"></asp:TextBox>

                           <%-- <input type="text" name="name" class="form-control" required="required">--%>
                            <asp:RequiredFieldValidator ID="rqv_company_name" runat="server" ControlToValidate="txt_compname" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                   

                        <div class="form-group">
                             <label>Name</label>
                            <asp:TextBox ID="txt_name" runat="server"  CssClass="form-control" ></asp:TextBox>
                            <%--<input type="number" class="form-control">--%>
                            <asp:RequiredFieldValidator ID="rgv_name" runat="server" ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
                        </div>
                        <div class="form-group">
                               <%--<label visible="false">Designation</label>--%>
                            <asp:TextBox ID="txt_desig" runat="server" Visible="false"  CssClass="form-control"></asp:TextBox>
                            <%--<input type="text" name="subject" class="form-control" required="required">--%>
                          <%--  <asp:RequiredFieldValidator ID="rgv_degination" runat="server" ControlToValidate="txt_desig" ErrorMessage="*"></asp:RequiredFieldValidator>
                      --%>  </div>
                        <div class="form-group">
                          
                             <label>Comment</label>
                            <asp:TextBox ID="txt_comm" runat="server" CssClass="form-control" Height="34px" Width="100%"></asp:TextBox>

                        </div>                        
                    </div>
                    <div class="col-sm-5">
                        <div class="form-group">
                           <label>Email
                            
                            </label>
                            &nbsp;<asp:TextBox ID="txt_email" runat="server" CssClass="form-control"  ></asp:TextBox>
                            <%--<input type="email" name="email" class="form-control" required="required">--%>
                            <asp:RequiredFieldValidator ID="rqv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="*"></asp:RequiredFieldValidator>
                            <asp:RegularExpressionValidator ID="rqv_email_validation" runat="server" ControlToValidate="txt_email" ErrorMessage="please Fill Proper Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
                        </div>
                        <div class="form-group">

                             <label>Services</label>
                            <%--<input type="text" class="form-control">--%>
                       <div style="margin:0px 0px 16px 0px">
                           <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                               
                               <ContentTemplate>
                               
                                   
                                   <asp:DropDownList ID="ddl_services" runat="server"  AutoPostBack="True" CssClass="form-control ddl" OnSelectedIndexChanged="ddl_services_SelectedIndexChanged">
                            </asp:DropDownList>
                           
                                   <asp:RequiredFieldValidator ID="rgv_ddl_service" runat="server" ControlToValidate="ddl_services" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>
            <br /><br />
                            <%-- <label>SubServices</label>     --%>
                          <asp:DropDownList ID="ddl_SubService" runat="server" visible="false" AutoPostBack="True" CssClass="form-control ddl">
                            </asp:DropDownList>
                              
                         <%--  <asp:RequiredFieldValidator ID="rqv_ddl_sub_service" runat="server" ControlToValidate="ddl_SubService" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>--%>
                              </ContentTemplate></asp:UpdatePanel>
                              </div>   

                           
                           <%-- <textarea name="message" id="message" required="required" class="form-control" rows="8"></textarea>--%>
                        </div>    
                        
                          <div style="margin:-22px 0px 0px 0px" class="form-group">
                            <label>Phone</label>
                            <asp:TextBox ID="txt_phone" runat="server" CssClass="form-control" MaxLength="12" ></asp:TextBox>
                         <%--   <textarea name="message" id="Textarea1" required="required" class="form-control" rows="8"></textarea>--%>
                              <asp:RegularExpressionValidator ID="rgv_phone_vaidation" runat="server" ControlToValidate="txt_phone" ErrorMessage="Please fill Proper Number " ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*"></asp:RegularExpressionValidator>
                        </div>                       
                        <div class="form-group">
                        
                <asp:Button ID="Button1" runat="server" Text="Submit"  style="margin-top:7%;" CssClass="btn btn-primary btn-lg" OnClick="Button1_Click"  OnClientClick="javascript:SwapDivsWithClick('swapper-first','swapper-other')" />
                          <%--  <button type="submit" name="submit" class="btn btn-primary btn-lg" required="required">Submit Message</button>--%>
                       </div>
                    </div></div>

            </div><!--/.row-->
        </div><!--/.container-->
    </section><!--/#contact-page-->
