<%@ Page Title="" Language="C#" MasterPageFile="~/FrontSite.Master" AutoEventWireup="true" CodeBehind="index.aspx.cs" Inherits="DinersRealEstateManagement.index" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    
    <meta name="viewport" content="width=device-width,initial-scale=1.0, minimum-scale=1.0, maximum-scale=1.0, user-scalable=no"/>
    <link rel="stylesheet" media="all and (orientation:landscape)" href="landscape.css">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Masthead-->
    <header class="masthead"></header>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
    <!-- backstretch jquery-->
    <script src="js/jquery.backstretch.min.js"></script>
    <script type="text/javascript">
        $(document).ready(function(){
            $('.masthead').backstretch([
                "/assets/img/indexCarousel1.png"
                , "/assets/img/indexCarousel2.png"
                , "/assets/img/indexCarousel3.png"
                , "/assets/img/indexCarousel4.png"
            ], {duration: 3000, fade: 750});
        });
    </script>
</asp:Content>
