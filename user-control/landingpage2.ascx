<%@ Control Language="C#" AutoEventWireup="true" CodeFile="landingpage2.ascx.cs" Inherits="user_control_landingpage2" %>
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
<div class="form">
<asp:UpdatePanel ID="UpdatePanel1" runat="server" UpdateMode="Conditional">
    <ContentTemplate>
             <asp:Label ID="lblLeadCategory" runat="server" Text=""></asp:Label>
    <div class="form_right_arrow">
    </div>
    <div class="form_top">
    </div>
    <div class="form_middle">
        <div class="form_title">
            <asp:Label ID="lblFormHeading" runat="server" Text=""></asp:Label>
            <div class="form_title_sh">
</div>   </div>
 <ul>    <li >
     
                  <%--  <asp:DropDownList ID="ddl_services"    placeholder="Services"  Visible="true" CssClass="form_middle ul li input" runat="server" AutoPostBack="false" ><%--OnSelectedIndexChanged="ddl_services_SelectedIndexChanged"--%>
        <%-- </asp:DropDownList>--%>

       <%-- <asp:RequiredFieldValidator ID="rgv_ddl_service" runat="server"  ControlToValidate="ddl_services"  Display="Dynamic" ErrorMessage="*"></asp:RequiredFieldValidator>--%>

        <asp:DropDownList ID="ddl_SubService" runat="server" Visible="false" AutoPostBack="false" >
        </asp:DropDownList>
       </li>
                <li >
                <asp:TextBox ID="txt_compname" Text="null" placeholder="Company Name" Visible="false" MaxLength="50" Class="form-control" CssClass="form_middle ul li input" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqv_company_name" runat="server" ControlToValidate="txt_compname" ErrorMessage="Company Name is required" ValidationGroup="CenterFormValidation"
                        Display="Dynamic"></asp:RequiredFieldValidator>          
                   <asp:TextBox ID="txt_name" MaxLength="50" CssClass="form-control"   placeholder="Name"   runat="server"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="rgv_name" ValidationGroup="CenterFormValidation" runat="server"  ControlToValidate="txt_name" Display="Dynamic" ErrorMessage="Name"></asp:RequiredFieldValidator>
  </li>
               <%-- <li>
               <asp:TextBox ID="txt_comm"  placeholder="Comment"  runat="server"></asp:TextBox>
                </li>--%>
                <li >
                   <%--<asp:RegularExpressionValidator ID="regexEmailValid" Display="Dynamic" runat="server"
                        ValidationExpression="(Email ID :)|\w+([-+.]\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"
                        ControlToValidate="txt_email" ErrorMessage="Invalid email format" ValidationGroup="CenterFormValidation"></asp:RegularExpressionValidator>--%>

                <asp:TextBox ID="txt_email" placeholder="Email" MaxLength="50" CssClass="form_middle ul li input" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator ID="rqv_email" runat="server" ControlToValidate="txt_email"  ErrorMessage="Email is required" ValidationGroup="CenterFormValidation"
                        Display="Dynamic"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rqv_email_validation" Display="Dynamic" runat="server" ControlToValidate="txt_email" ErrorMessage="please Fill Proper Email Format"  ValidationGroup="CenterFormValidation" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</li>
                <li >
                     <asp:TextBox ID="txt_desig" CssClass="form_middle ul li input" runat="server" Visible="false"></asp:TextBox>
                
                <asp:TextBox ID="txt_phone" placeholder="Phone" runat="server" MaxLength="10"  CssClass="form-control" ></asp:TextBox>
<asp:RequiredFieldValidator ID="Rgv_phone" runat="server" ControlToValidate="txt_phone"  ErrorMessage="Phone is required" ValidationGroup="CenterFormValidation"
                        Display="Dynamic"></asp:RequiredFieldValidator>

<asp:RegularExpressionValidator ID="rgv_phone_vaidation" runat="server" ValidationGroup="CenterFormValidation"
                        Display="Dynamic" ControlToValidate="txt_phone" ErrorMessage="Please fill Proper Number " ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*"></asp:RegularExpressionValidator>
                
                <asp:RegularExpressionValidator ID="revtxt_contactNo" Display="Dynamic" runat="server"
                        ValidationExpression="(Contact Number :)|[0-9-]{10,}$"
                        ControlToValidate="txt_phone" ErrorMessage="Minimum 10 digit number required" ValidationGroup="CenterFormValidation"></asp:RegularExpressionValidator>
                </li>
              <li>
               <asp:TextBox ID="txt_comm"  placeholder="Comment"  runat="server"></asp:TextBox>
                </li>
           <cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha001" runat="server" PublicKey="6LeEDSUTAAAAAHM4ISRO_ItbCWPsc4XqZcUujZmI" PrivateKey="6LeEDSUTAAAAAMb2N7VL2f-KLht2UJkEY8uHtpgo" />

                <asp:Panel ID="Panel1" runat="server" Visible="false"></asp:Panel>
                <li><asp:Label ID="lblError" Visible="false" runat="server" Style="color: red" Text=""></asp:Label></li>
                <li> <asp:ValidationSummary   ID="ValidationSummary1" runat="server" ValidationGroup="CenterFormValidation"
                            Width="165px" ShowMessageBox="true" ShowSummary="false" DisplayMode="BulletList"
                            HeaderText="Following Fields are Required"  ForeColor="Red" Font-Size="12px" />
                        <asp:HiddenField ID="hdnemailinfo" Visible="false" runat="server" /></li>
            </ul>
       <div class="text-center"> <asp:Button ID="btn_submit"  runat="server" Text="SUBMIT" ValidationGroup="CenterFormValidation"
                            OnClick="btn_submit_Click" CssClass="submit"  />
              </div></div>
    </ContentTemplate>
    <Triggers>
        <asp:PostBackTrigger ControlID="btn_submit" />
    </Triggers>
</asp:UpdatePanel></div>
