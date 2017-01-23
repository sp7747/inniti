<%@ Control Language="C#" AutoEventWireup="true" CodeFile="main-control.ascx.cs" Inherits="user_control_main_control" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>
<script type="text/javascript">
    function Check(textBox, maxLength) {
        if (textBox.value.length > maxLength) {
            textBox.value = textBox.value.substr(0, maxLength);
        }
    }

</script>
<style>

    .g-recaptcha {
   margin-left: 6px;
    transform: scale(0.81);
    transform-origin: 0 0 0;
    padding-bottom: 3px;
    padding: 15px;
}
   
</style>
<div >
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
             <asp:Label ID="lblLeadCategory" runat="server" Text=""></asp:Label>
    <div >
    </div>
    <div>
    </div>
    <div  class="contact" >
        <div >
            <asp:Label ID="lblFormHeading" runat="server" Text=""></asp:Label>
            <div >
</div>   </div>
 <ul id="lstofall">    <li >
     
                 
        <asp:DropDownList ID="ddl_SubService" CssClass="bar" runat="server" Visible="false" AutoPostBack="false" >
        </asp:DropDownList>
       </li>
                <li >
                <asp:TextBox ID="txt_compname"   CssClass="bar"  Text="null" placeholder="Company Name" Visible="false" MaxLength="50" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqv_company_name" runat="server" ControlToValidate="txt_compname" ErrorMessage="Company Name is required" ValidationGroup="CenterFormValidation"
                        Display="Dynamic"></asp:RequiredFieldValidator>          
                   <asp:TextBox ID="txt_name" MaxLength="50"  CssClass="bar"    placeholder="Name"   runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rgv_name" ValidationGroup="CenterFormValidation" runat="server"  ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="Name"></asp:RequiredFieldValidator>
  </li>
             
                <li >
                

                <asp:TextBox ID="txt_email"  CssClass="bar"  placeholder="Email" MaxLength="50" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator ID="rqv_email" runat="server" ControlToValidate="txt_email"  ErrorMessage="Email is required" ValidationGroup="CenterFormValidation"
                        Display="Dynamic"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rqv_email_validation" Display="Dynamic" runat="server" ControlToValidate="txt_email" ErrorMessage="please Fill Proper Email Format"  ValidationGroup="CenterFormValidation" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</li>
                <li >
                     <asp:TextBox ID="txt_desig"  CssClass="bar" runat="server" Visible="false"></asp:TextBox>
                
                <asp:TextBox ID="txt_phone"   CssClass="bar" placeholder="Phone" runat="server" MaxLength="10"  ></asp:TextBox>
<asp:RequiredFieldValidator ID="Rgv_phone" runat="server" ControlToValidate="txt_phone"  ErrorMessage="Phone is required" ValidationGroup="CenterFormValidation"
                        Display="Dynamic"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="rgv_phone_vaidation" runat="server" ValidationGroup="CenterFormValidation"
                        Display="Dynamic" ControlToValidate="txt_phone" ErrorMessage="Please fill Proper Number " ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*"></asp:RegularExpressionValidator>
                
                <asp:RegularExpressionValidator ID="revtxt_contactNo" Display="Dynamic" runat="server"
                        ValidationExpression="(Contact Number :)|[0-9-]{10,}$"
                        ControlToValidate="txt_phone" ErrorMessage="Minimum 10 digit number required" ValidationGroup="CenterFormValidation"></asp:RegularExpressionValidator>
                </li>
              <li>
               <asp:TextBox ID="txt_comm"  CssClass="bar"  placeholder="Comment"  runat="server"></asp:TextBox>
                </li>
           <cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha001" runat="server" PublicKey="6LeEDSUTAAAAAHM4ISRO_ItbCWPsc4XqZcUujZmI" PrivateKey="6LeEDSUTAAAAAMb2N7VL2f-KLht2UJkEY8uHtpgo" />

                <asp:Panel ID="Panel1" runat="server" Visible="false"></asp:Panel>
                <li><asp:Label ID="lblError" Visible="false" runat="server" Style="color: red" Text=""></asp:Label></li>
                <li> <asp:ValidationSummary   ID="ValidationSummary1" runat="server" ValidationGroup="CenterFormValidation"
                            Width="165px" ShowMessageBox="true" ShowSummary="false" DisplayMode="BulletList"
                            HeaderText="Following Fields are Required"  ForeColor="Red" Font-Size="12px" />
                        </li>
            </ul>
   <div >    <asp:Button ID="btn_submit"  CssClass="bar"  runat="server" Text="SUBMIT" ValidationGroup="CenterFormValidation"
                            OnClick="btn_submit_Click"   /><asp:HiddenField ID="hdnemailinfo" Visible="false" runat="server" /> 
              </div></div>
    </ContentTemplate>
    <Triggers>
        <asp:PostBackTrigger ControlID="btn_submit" />
    </Triggers>
</asp:UpdatePanel></div>
