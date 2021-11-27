<%@ Page Title="" Language="C#" MasterPageFile="~/SYS/backSideSite.Master" AutoEventWireup="true" CodeBehind="clientAccountList.aspx.cs" Inherits="DinersRealEstateManagement.SYS.newsManag" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" id="container-wrapper">
        <div class="my-4 ">
            <h1 class="h3 mb-0 text-gray-800">會員註冊列表</h1>
        </div>
        <div class="row">
            <div class="col-lg-12 mb-4">
                <div class="card">
                    <asp:GridView ID="AccountList_GV" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" AllowPaging="True" CellPadding="4" ForeColor="#333333" Width="100%">
                        <AlternatingRowStyle BackColor="White" />
                        <Columns>
                            <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" />
                            <asp:BoundField DataField="name" HeaderText="姓名" SortExpression="name" />
                            <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                            <asp:BoundField DataField="password" HeaderText="密碼" SortExpression="password" />
                            <asp:BoundField DataField="phone" HeaderText="電話" SortExpression="phone" />
                            <asp:BoundField DataField="mophone" HeaderText="手機號碼" SortExpression="mophone" />
                            <asp:BoundField DataField="mail" HeaderText="E-mail" SortExpression="mail" />
                            <asp:BoundField DataField="city" HeaderText="縣市區" SortExpression="city" />
                            <asp:BoundField DataField="address" HeaderText="地址" SortExpression="address" />
                            <asp:BoundField DataField="lineID" HeaderText="Line-ID" SortExpression="lineID" />
                            <asp:BoundField DataField="date" HeaderText="註冊日期" SortExpression="date" DataFormatString="{0:yyyy-MM-dd HH:mm}"/>
                            <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="BtnDelete" runat="server" CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認刪除？')" CausesValidation="False"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ControlStyle BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="1px" CssClass="btn btn-danger btn-block" ForeColor="White" />
                            </asp:TemplateField>
                        </Columns>
                        <EditRowStyle BackColor="#2461BF" />
                        <FooterStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <HeaderStyle BackColor="#507CD1" Font-Bold="True" ForeColor="White" />
                        <PagerStyle BackColor="#2461BF" ForeColor="White" HorizontalAlign="Center" />
                        <RowStyle BackColor="#EFF3FB" />
                        <SelectedRowStyle BackColor="#D1DDF1" Font-Bold="True" ForeColor="#333333" />
                        <SortedAscendingCellStyle BackColor="#F5F7FB" />
                        <SortedAscendingHeaderStyle BackColor="#6D95E1" />
                        <SortedDescendingCellStyle BackColor="#E9EBEF" />
                        <SortedDescendingHeaderStyle BackColor="#4870BE" />
                    </asp:GridView>
                    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [Account] ORDER BY [id] DESC" DeleteCommand="DELETE FROM [Account] WHERE [id] = @id">
                        <DeleteParameters>
                            <asp:Parameter Name="id" Type="Int32" />
                        </DeleteParameters>
                    </asp:SqlDataSource>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
