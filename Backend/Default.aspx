<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Backend_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headMeta" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">

    <h2><asp:Label ID="lblTitle" runat="server" /></h2>
<hr />
<asp:Label ID="lblContent" runat="server" />

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" Runat="Server">
    <asp:HyperLink ID="HyperLink1" NavigateUrl="~/AddPage.aspx" Text="Add Page" runat="server" />
<hr />
<asp:Repeater ID="rptPages" runat="server">
<ItemTemplate>
    <%# Container.ItemIndex + 1 %>
    <%--<asp:HyperLink ID="HyperLink2" NavigateUrl='<%# Eval("PageName", "~/Pages/{0}.aspx") %>' Text='<%# Eval("Title") %>'--%>
            <asp:HyperLink NavigateUrl='<%# Eval("PageName", "~/Press-Release/{0}.html") %>' Text='<%# Eval("Title") %>'

        runat="server" />   <asp:HyperLink ID="HyperLink2" NavigateUrl='<%# Eval("PageName", "~/EMR/{0}.html") %>' Text='<%# Eval("Title") %>'
                runat="server" />
</ItemTemplate>
<SeparatorTemplate>
    <br />
</SeparatorTemplate>
</asp:Repeater>

</asp:Content>


