<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="DynamicPage.aspx.cs" Inherits="Press_prelease_DynamicPage" %>

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
</asp:Content>

