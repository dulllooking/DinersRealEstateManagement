<%@ Page Title="" Language="C#" MasterPageFile="~/FrontSite.Master" AutoEventWireup="true" CodeBehind="services.aspx.cs" Inherits="DinersRealEstateManagement.services" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Banner-->
    <header class="page-section" id="banner"></header>
    <!-- Services-->
    <div id="Services">
        <div class="container px-4 py-5 px-lg-5">
            <h2 class="text-center mt-0">資料服務區域</h2>
            <hr class="divider" />
            <div class="row gx-4 gx-lg-5">
                <div class="col-lg-12 table-responsive">
                    <table class="table table-hover" id="news">
                        <thead>
                            <tr class="h5">
                                <th scope="col">縣市</th>
                                <th scope="col">地區</th>
                            </tr>
                        </thead>
                        <tbody>
                            <asp:Literal ID="LiteralNewsList" runat="server"></asp:Literal>
                        </tbody>
                    </table>
                </div>
            </div>
        </div>
    </div>
    <!-- Portfolio-->
    <div id="portfolio">
        <div class="container-fluid p-0">
            <div class="row g-0">
                <div class="col-lg-4 col-sm-6">
                    <img class="img-fluid" src="assets/img/carousel2.jpeg" alt="..." />
                </div>
                <div class="col-lg-4 col-sm-6">
                    <img class="img-fluid" src="assets/img/carousel1.jpeg" alt="..." />
                </div>
                <div class="col-lg-4 col-sm-6">
                    <img class="img-fluid" src="assets/img/carousel4.jpeg" alt="..." />
                </div>
            </div>
        </div>
    </div>
    <!-- Call to action-->
    <section class="py-4 py-lg-5 bg-dark text-white">
        <div class="container px-4 px-lg-5 text-center">
            <h2 class="mb-2">立刻加入大來不動產!</h2>
            <a class="btn btn-primary btn-xl mb-2" href="sign_up.aspx">馬上註冊</a>
        </div>
    </section>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
