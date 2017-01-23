<%@ Control Language="C#" AutoEventWireup="true" CodeFile="landing-page.ascx.cs" Inherits="user_control_Contact" %>

<%@ Register Assembly="GoogleReCaptcha" Namespace="GoogleReCaptcha" TagPrefix="cc1" %>


<style type="text/css">
    .auto-style1 {
        width: 100%;
    }
</style>


<%--<link href="../css/asc0713.css" rel="stylesheet" />--%>

<div class="form">

    <asp:UpdatePanel ID="UpdatePanel1" runat="server">

    <ContentTemplate>
    <asp:Label ID="lblLeadCategory" runat="server" Text=""></asp:Label>
    <div class="form_right_arrow">
    </div>
    <div class="form_top">
    </div>
    <asp:Panel ID="Panel1" runat="server"></asp:Panel>
    <div class="form_middle">
        <div class="form_title">
            <asp:Label ID="lblFormHeading" runat="server" Text=""></asp:Label>
            <div class="form_title_sh">
            </div>
            <%--  Request a demonstration from<br />
            our Expert how to improve your<br />
            revenue collection and reduce<br />
            your AR days--%>
        </div>
        <ul>
             <li>
                 <%--<asp:Label ID="lblName" runat="server" Text="Name: "></asp:Label>--%>
                
             </li>
            <li>


<%--<label></label>--%>
<asp:TextBox ID="txt_compname" placeholder="Company Name" CssClass="form_middle ul li input" runat="server"></asp:TextBox>
<asp:RequiredFieldValidator ID="rqv_company_name" runat="server" ControlToValidate="txt_compname" ErrorMessage="*"></asp:RequiredFieldValidator>          
<%--<label>Name</label>--%></li><li>
<asp:TextBox ID="txt_name" placeholder="Name" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator ID="rgv_name" runat="server" ControlToValidate="txt_name" ErrorMessage="*"></asp:RequiredFieldValidator>
                    </li>
<li><asp:TextBox ID="txt_desig" runat="server" Visible="false"></asp:TextBox>
            </li>
<li><%--<label>Comment</label>--%>
<asp:TextBox ID="txt_comm"  placeholder="Comment"  runat="server"></asp:TextBox>
    

</li>
            <li>
<%--<label>
    Email
                            
</label>--%>
<asp:TextBox ID="txt_email" placeholder="Email" runat="server"></asp:TextBox>

<asp:RequiredFieldValidator ID="rqv_email" runat="server" ControlToValidate="txt_email" ErrorMessage="*"></asp:RequiredFieldValidator>
<asp:RegularExpressionValidator ID="rqv_email_validation" runat="server" ControlToValidate="txt_email" ErrorMessage="please Fill Proper Email Format" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*"></asp:RegularExpressionValidator>
</li>
            <li>
<%--<label>Services</label>--%>


        <asp:DropDownList ID="ddl_services" placeholder="Services" runat="server" AutoPostBack="True" OnSelectedIndexChanged="ddl_services_SelectedIndexChanged">
        </asp:DropDownList>

        <asp:RequiredFieldValidator ID="rgv_ddl_service" runat="server" ControlToValidate="ddl_services" ErrorMessage="*" InitialValue="0"></asp:RequiredFieldValidator>

        <asp:DropDownList ID="ddl_SubService" runat="server" Visible="false" AutoPostBack="True" >
        </asp:DropDownList>

    
                </li>
            <li>
<%--<label>Phone</label>--%>
<asp:TextBox ID="txt_phone" placeholder="Phone" runat="server" MaxLength="12"></asp:TextBox>

<asp:RegularExpressionValidator ID="rgv_phone_vaidation" runat="server" ControlToValidate="txt_phone" ErrorMessage="Please fill Proper Number " ValidationExpression="^\s*(?:\+?(\d{1,3}))?[-. (]*(\d{3})[-. )]*(\d{3})[-. ]*(\d{4})(?: *x(\d+))?\s*"></asp:RegularExpressionValidator>
                </li>
            <li><cc1:GoogleReCaptcha ID="ctrlGoogleReCaptcha001" runat="server" PublicKey="6LeEDSUTAAAAAHM4ISRO_ItbCWPsc4XqZcUujZmI" PrivateKey="6LeEDSUTAAAAAMb2N7VL2f-KLht2UJkEY8uHtpgo" /></li>
<li>
    
    
    <asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
<asp:Button ID="btn_submit" runat="server" Text="Submit" Style="margin-top: 7%;" OnClick="btn_submit_Click"  /><%--OnClientClick="javascript:SwapDivsWithClick('swapper-first','swapper-other')"--%>
    <asp:HiddenField ID="hdnemailinfo" runat="server" />
</li></ul></div> 
        </ContentTemplate>
        <Triggers>
        <asp:PostBackTrigger ControlID="btn_submit" />
    </Triggers>
</asp:UpdatePanel>
     <div class="form_bottom">
    </div>
            </div>