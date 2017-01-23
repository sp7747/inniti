<%@ Page Title="" Language="C#" ValidateRequest = "false"  MasterPageFile="~/Backend/backend.master" AutoEventWireup="true" CodeFile="Add-PressRelease.aspx.cs" Inherits="Backend_Add_PressRelease" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">

  
    <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>



    <table border="0" cellpadding="0" cellspacing="0">
    <tr>
            <td>
                Page Url:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtPageName" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <tr>
            <td>
                Description:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtDesc" runat="server" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        <%--<tr>
            <td>
                Keywords:
            </td>
        </tr>--%>
         <tr>
            <td>
          Main Head:
                

            </td>
            
        </tr>
           <tr>
            <td>
             <asp:TextBox ID="txt_MainHead" runat="server" />
            </td>
        </tr>
           <tr>
            <td>
                &nbsp;
            </td>
        </tr>

        <tr>
            <td>
            Content:
            </td>
        </tr>
        <tr>
            <td>
                <asp:TextBox ID="txtContent" runat="server" TextMode="MultiLine" />
            </td>
        </tr>
        <tr>
            <td>
                &nbsp;
            </td>
        </tr>
        
        

    <script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
    <script type="text/javascript">
        // tinymce.init({ selector: 'textarea' });
        tinymce.init({
            selector: "textarea",  // change this value according to your HTML
            plugins: "code",
            // toolbar: "code",
            menubar: "tools"


        });

    </script>
 

<tr>
    <td>
        <asp:Button ID="btnSubmit" Text="Submit" runat="server" OnClick="Submit" />
    </td>
</tr>
</table>
<%--<script type="text/javascript" src="//tinymce.cachefly.net/4.0/tinymce.min.js"></script>
<script type="text/javascript">
    tinymce.init({ selector: 'textarea' });
</script>--%>
</asp:Content>

