<%@ Page Title="" Language="C#" MasterPageFile="~/FrontSite.Master" AutoEventWireup="true" CodeBehind="news_list.aspx.cs" Inherits="DinersRealEstateManagement.news_list" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <!-- Banner-->
    <header class="page-section" id="banner"></header>
    <!-- News List-->
    <div id="portfolio">
        <div class="container px-4 py-5 px-lg-5">
            <h2 class="text-center mt-0">最新消息</h2>
            <hr class="divider" />
            <div class="row gx-4 gx-lg-5">
                <div class="col-lg-12 table-responsive">
                    <asp:DropDownList ID="NewsDropDownList" runat="server" AutoPostBack="True" OnSelectedIndexChanged="NewsDropDownList_SelectedIndexChanged" class="btn btn-outline-primary dropdown-toggle">
                        <asp:ListItem Selected="True" Value="25">最新 25 筆</asp:ListItem>
                        <asp:ListItem Value="0">全部資料</asp:ListItem>
                    </asp:DropDownList>
                    <table class="table table-hover" id="news">
                        <thead>
                            <tr class="h5">
                                <th scope="col">日期</th>
                                <th scope="col">標題</th>
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
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder2" runat="server">
</asp:Content>
