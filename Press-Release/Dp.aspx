<%@ Page Title="" Language="C#" MasterPageFile="~/Site.master" AutoEventWireup="true" CodeFile="Dp.aspx.cs" Inherits="Press_prelease_Dp" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">

     <style type="text/css">
        body
        {
            font-family: Arial;
            font-size: 10pt;
        }
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="headMeta" Runat="Server">
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="FeaturedContent" Runat="Server">
<h2>
        <asp:Label ID="lblTitle" runat="server" /></h2>

</asp:Content>
<asp:Content ID="Content4" ContentPlaceHolderID="MainContent" Runat="Server">

    <hr />
    <asp:Label ID="lblContent" runat="server" />

</asp:Content>

