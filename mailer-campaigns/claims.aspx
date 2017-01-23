<%@ Page Language="C#" AutoEventWireup="true" CodeFile="claims.aspx.cs" Inherits="mailer_campaigns_claims" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>The Perils of Unmanaged Claims could grow into Major Challenge</title>
    <link href="style.css" rel="stylesheet" type="text/css" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server"> <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
        <div id="wrapper">
            <!-- header -->
            <div class="header">
                <div class="mailer_title">The Perils of Unmanaged Claims could grow into Major Challenge</div>
            </div>
            <!-- logo -->
            <div class="logo">
                <img src="images/inniti-alliance-logo.png" width="188" height="88" alt="inniti alliance" />
            </div>
            <!-- logo end -->
            <!-- header end -->
            <!-- image header -->
            <div class="image_header">
                <!-- form -->
<%--                <div class="form">
                    <div class="form_middle">
                        <div class="form_title">
                            <span id="splandingpageform_lblFormHeading">Contact US</span>
                            <div class="form_title_sh">
                            </div>
                        </div>
                        <ul>
                            <li>
                                <label>Name:</label>
                                <input name="splandingpageform$txt_firstname" type="text" maxlength="50" id="splandingpageform_txt_firstname" class="watermark">
                                <span id="splandingpageform_RequiredFieldValidator1" style="color: Red; display: none;">Name is required</span>
                                <span id="splandingpageform_revtxt_firstname" style="color: Red; display: none;">Please enter characters only</span>
                                <input type="hidden" name="splandingpageform$TextBoxWatermarkExtender5_ClientState" id="splandingpageform_TextBoxWatermarkExtender5_ClientState">
                            </li>
                            <li>
                                <label>Email Id:</label>
                                <input name="splandingpageform$txt_contactNo" type="text" maxlength="12" id="splandingpageform_txt_contactNo" class="watermark">
                                <span id="splandingpageform_RequiredFieldValidator3" style="color: Red; display: none;">Phone number is required</span>
                                <span id="splandingpageform_revtxt_contactNo" style="color: Red; display: none;">Please enter numbers only</span>
                                <input type="hidden" name="splandingpageform$TextBoxWatermarkExtender4_ClientState" id="splandingpageform_TextBoxWatermarkExtender4_ClientState">
                            </li>
                            <li>
                                <label>Contact Number:</label>
                                <input name="splandingpageform$txt_email" type="text" maxlength="50" id="splandingpageform_txt_email" class="watermark">
                                <span id="splandingpageform_RequiredFieldValidator2" style="color: Red; display: none;">Email is required</span>
                                <span id="splandingpageform_RegularExpressionValidator1" style="color: Red; display: none;">Invalid email format</span>
                                <input type="hidden" name="splandingpageform$TextBoxWatermarkExtender3_ClientState" id="splandingpageform_TextBoxWatermarkExtender3_ClientState">
                            </li>

                            <li>
                                <label>Comments:</label>
                                <textarea name="splandingpageform$txt_comments" rows="2" cols="20" id="splandingpageform_txt_comments" onkeyup="javascript:Check(this, 200);"
                                    onchange="javascript:Check(this, 200);"></textarea>
                                <span id="splandingpageform_revtxt_comments" style="color: Red; display: none;">Please enter characters only</span>
                                <input type="hidden" name="splandingpageform$TextBoxWatermarkExtender2_ClientState" id="splandingpageform_TextBoxWatermarkExtender2_ClientState">
                            </li>
                            <li>
                                <div class="captcha">
                                    <input type="submit" name="splandingpageform$lblCaptcha" value="7NTiz1" id="splandingpageform_lblCaptcha" disabled="disabled" class="captcha">
                                </div>
                                <div class="captcha_text">
                                    <input name="splandingpageform$txtCaptcha" type="text" maxlength="6" id="splandingpageform_txtCaptcha" value="Enter Text :"
                                        onblur="if(this.value=='') this.value='Enter Text :';" onfocus="if(this.value=='Enter Text :') this.value='';" style="margin: 5px 0px; padding: 12px; width: 67px;">
                                </div>
                                <span id="splandingpageform_RequiredFieldValidator4" style="color: Red; float: right; display: none;">Please Enter Above Text</span>
                                <span id="splandingpageform_cvtxtcaptcha" style="color: Red; float: right; display: none;">Invailid capcha text</span>
                                <div class="clear">
                                </div>
                            </li>
                            <li>
                                <div class="submit">
                                    <img src="images/second-week-out.jpg" width="136" height="40" />
                                    <div id="splandingpageform_ValidationSummary1" style="color: Red; font-size: 12px; width: 165px; display: none;"></div>
                                    <input type="hidden" name="splandingpageform$hdnemailinfo" id="splandingpageform_hdnemailinfo"
                                        value="http://www.medicalbillersandcoders.com/medical-billing-companies/practice-performance-analysis-mailer-0108.aspx">
                                </div>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>--%>
            <!-- form ends -->


            <%--    <uc1:landingpage runat="server" FormHeading="google" ID="landingpage" />--%>
                <uc1:landingpage2 runat="server" FormHeading="Contact-us" LeadCategory="Inniti" EmailerCampaignSubject="Lead From Inniti"  ID="landingpage2" />
        </div>
        <!-- image header ends -->
        <!-- content -->
        <div class="content">
            <p>
                Understand the gaps occurring in your claims processing and delve into the past events to anticipate the future and reduce the likelihood of these occurring again. 
    Claims analytics intends to scrutinize data at various levels in order to reduce errors in decision making. Empower your organization with-
            </p>
            <ul>
                <li>Powerful insights</li>
                <li>Fraud prediction</li>
                <li>Improved customer service</li>
                <li>Reduced leakages</li>
            </ul>
            <p>With a host of services, Inniti offers leverage with its services that ensure improved operational efficiency and increased productivity.</p>
            <p style="text-align: center; font-size: 22px; font-weight: bold; color: #00b0c6;"><em>CONTACT US TODAY</em></p>
        </div>
        <!-- content ends -->
        <!-- foorer -->
        <div class="footer">All Rights Reserved. @ 2016 innitialliance.com</div>
        <!-- footer ends -->


    </form>
</body>
</html>
