<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="Press_Release_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headMeta" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
    <div id="div1" runat="server">
<asp:literal id="output" runat="server"/>
<asp:label id="outputlabel" runat="server"/>

    </div>
</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" Runat="Server">
</asp:Content>

