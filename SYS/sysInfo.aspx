<%@ Page Title="" Language="C#" MasterPageFile="~/SYS/backSideSite.Master" AutoEventWireup="true" CodeBehind="sysInfo.aspx.cs" Inherits="DinersRealEstateManagement.SYS.sysInfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="my-4 ">
        <h1 class="h3 mb-0 text-gray-800">公司資訊管理</h1>
    </div>
    <div class="row">
        <div class="col-lg-12 mb-4">
            <div class="card mb-4">
                <div class="card-body">
                    <div class="form-group font-weight-bold text-success">
                        <label for="InputCompanyName">公司名稱</label>
                        <asp:TextBox ID="InputCompanyName" runat="server" CssClass="form-control font-weight-bold" placeholder="請輸入公司名稱"></asp:TextBox>
                    </div>
                    <div class="form-group font-weight-bold text-success">
                        <label for="InputServiceTime">服務時間</label>
                        <asp:TextBox ID="InputServiceTime" runat="server" CssClass="form-control font-weight-bold" placeholder="請輸入服務時間"></asp:TextBox>
                    </div>
                    <div class="form-group font-weight-bold text-success">
                        <label for="InputAddress">公司地址</label>
                        <asp:TextBox ID="InputAddress" runat="server" CssClass="form-control font-weight-bold" placeholder="請輸入公司地址"></asp:TextBox>
                    </div>
                    <div class="form-group font-weight-bold text-success">
                        <label for="InputPhone">公司電話</label>
                        <asp:TextBox ID="InputPhone" runat="server" CssClass="form-control font-weight-bold" placeholder="請輸入公司電話"></asp:TextBox>
                    </div>
                    <div class="form-group font-weight-bold text-success">
                        <label for="InputFax">公司傳真</label>
                        <asp:TextBox ID="InputFax" runat="server" CssClass="form-control font-weight-bold" placeholder="請輸入公司傳真"></asp:TextBox>
                    </div>
                    <div class="form-group font-weight-bold text-success">
                        <label for="InputMail">公司 E-mail</label>
                        <asp:TextBox ID="InputMail" runat="server" CssClass="form-control font-weight-bold" placeholder="請輸入公司mail"></asp:TextBox>
                    </div>
                    <asp:Button ID="submit" runat="server" Text="送出" CssClass="btn btn-primary btn-block btn-lg font-weight-bold" OnClick="submit_Click" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
