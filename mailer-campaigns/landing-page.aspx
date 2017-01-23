<%@ Page Language="C#" AutoEventWireup="true" CodeFile="landing-page.aspx.cs" Inherits="landing_page" %>


<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>

    <form id="form1" runat="server">
            <asp:ScriptManager ID="ScriptManager1" runat="server"></asp:ScriptManager>
    <div>

        <uc1:landingpage runat="server" ID="landingpage" />

        <%--<asp:Label ID="lblStatus" runat="server" Text="Label"></asp:Label>
        <asp:Panel ID="Panel1" runat="server"></asp:Panel>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />--%>
       <%-- <uc1:landingpage runat="server" ID="landingpage" />--%>
    </div>
    </form>
</body>
</html>
