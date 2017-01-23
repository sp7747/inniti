<%@ Page Language="C#" AutoEventWireup="true" CodeFile="quetions.aspx.cs" Inherits="quetions" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title></title>
</head>
<body>
   <form id="form1" runat="server">
<%--<div>
<asp:Button ID="btnSend" Text="Send XML to Database" runat="server" onclick="btnSend_Click" /><br /><br />
<b>Inserted Records Details</b> :
<asp:GridView ID="gvDetails" runat="server">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
</asp:GridView>--%>

     <div>
<b>Please Select Excel File: </b>
<asp:FileUpload ID="fileuploadExcel" runat="server" />&nbsp;&nbsp;
<%--<asp:Button ID="btnImport" runat="server" Text="Import Data" OnClick="btnImport_Click" />--%>
<br />
<asp:Label ID="lblMessage" runat="server" Visible="False" Font-Bold="True" ForeColor="#009933"></asp:Label><br />
<asp:GridView ID="grvExcelData" runat="server">
<HeaderStyle BackColor="#df5015" Font-Bold="true" ForeColor="White" />
</asp:GridView>
</div>


    <div>
<table>
<tr>
<td>
<span style="color: Red">*</span>Attach Excel file
</td>
<td>
<%--<asp:FileUpload ID="fileupload1" runat="server" />--%>
</td>
</tr>
<tr>
<td></td>
<td>
<asp:Button ID="btnSend" runat="server" Text="Export" onclick="btnSend_Click"  />
</td>
</tr>
</table>
<asp:GridView ID="GridView1" runat="server">
</asp:GridView>
</div>

</form>
</body>
</html>
