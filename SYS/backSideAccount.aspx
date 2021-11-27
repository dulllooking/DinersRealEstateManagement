<%@ Page Title="" Language="C#" MasterPageFile="~/SYS/backSideSite.Master" AutoEventWireup="true" CodeBehind="backSideAccount.aspx.cs" Inherits="DinersRealEstateManagement.SYS.backSideAccount" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" id="container-wrapper">
        <div class="my-4 ">
            <h1 class="h3 mb-0 text-gray-800">後台帳號管理</h1>
        </div>
        <div class="row">
            <div class="col-lg-6 mb-4">
                <div class="card">
                    <asp:Panel ID="Pane_view" runat="server" CssClass="card-body">
                        <asp:Button ID="Btn_Add" runat="server" Text="新增管理帳號" OnClick="Btn_Add_Click" CssClass="btn btn-primary btn-lg mb-4 font-weight-bold" />
                        <h5><span class="badge badge-pill badge-warning text-dark">* 定期更新密碼，確保資安 !</span></h5>
                        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" Width="100%" OnDataBound="GridView1_DataBound" OnRowCommand="GridView1_RowCommand" >
                            <AlternatingRowStyle BackColor="White" />
                            <Columns>
                                <asp:TemplateField HeaderText="重設密碼" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="BtnReset" runat="server" CommandName="Reset" Text="重設密碼" CausesValidation="False" CommandArgument='<%# Container.DataItemIndex %>'></asp:LinkButton>
                                    </ItemTemplate>
                                    <ControlStyle BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="1px" CssClass="btn btn-success btn-block" ForeColor="White" />
                                </asp:TemplateField>
                                <asp:BoundField DataField="id" HeaderText="No." InsertVisible="False" ReadOnly="True" SortExpression="id" />
                                <asp:BoundField DataField="account" HeaderText="帳號" SortExpression="account" />
                                <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="BtnDelete" runat="server" CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認刪除？')" CausesValidation="False"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ControlStyle BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="1px" CssClass="btn btn-danger btn-block" ForeColor="White" />
                                </asp:TemplateField>
                            </Columns>
                            <FooterStyle BackColor="White" ForeColor="#000066" />
                            <HeaderStyle BackColor="#006699" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="White" ForeColor="#000066" HorizontalAlign="Left" />
                            <RowStyle ForeColor="#000066" />
                            <SelectedRowStyle BackColor="#669999" Font-Bold="True" ForeColor="White" />
                            <SortedAscendingCellStyle BackColor="#F1F1F1" />
                            <SortedAscendingHeaderStyle BackColor="#007DBB" />
                            <SortedDescendingCellStyle BackColor="#CAC9C9" />
                            <SortedDescendingHeaderStyle BackColor="#00547E" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" DeleteCommand="DELETE FROM [backSideAccount] WHERE [id] = @id"  SelectCommand="SELECT * FROM [backSideAccount]">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>
                    <asp:Panel ID="Panel_Edit" runat="server" CssClass="card-body" Visible="False">
                        <asp:Button ID="cancel" runat="server" Text="返回" CssClass="btn btn-primary" OnClick="cancel_Click" />
                        <hr />
                        <div class="form-group mt-5">
                            <label class="h5  font-weight-bold text-info" for="InputAccount">帳號</label>
                            <asp:TextBox ID="InputAccount" runat="server" CssClass="form-control" placeholder="輸入帳號"></asp:TextBox>
                            <asp:Label ID="Account_Err" runat="server" Text="未填帳號" ForeColor="#CC0000" Visible="False"></asp:Label>
                            <asp:Label ID="Account_Dub" runat="server" Text="帳號重複" ForeColor="#CC0000" Visible="False"></asp:Label>
                        </div>
                        <div class="form-group">
                            <label class="h5 font-weight-bold text-info" for="InputPassword">密碼</label>
                            <asp:TextBox ID="InputPassword" runat="server" CssClass="form-control" placeholder="輸入密碼" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="Password_Err" runat="server" Text="未填密碼" ForeColor="#CC0000" Visible="False"></asp:Label>
                        </div>
                        <asp:Button ID="submit" runat="server" Text="送出" CssClass="btn btn-primary btn-block btn-lg font-weight-bold" OnClick="submit_Click" />
                        <asp:Label ID="Label_ID" runat="server" Visible="False"></asp:Label>
                    </asp:Panel>
                </div>
            </div>
            <div class="col-lg-6 mb-4">
                <div class="card">
                    <div id="divReSetCheck" runat="server" Visible="False" class="card-body">
                        <div class="form-group">
                            <label class="h5 font-weight-bold text-dark" for="InputPassword">驗證舊密碼</label>
                            <asp:TextBox ID="TBoxReSetCheck" runat="server" CssClass="form-control" placeholder="輸入舊密碼" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="LabReSetCheck" runat="server" Text="密碼錯誤" ForeColor="#CC0000" Visible="False"></asp:Label>
                        </div>
                        <asp:Button ID="BtnReSetCheck" runat="server" Text="驗證" CssClass="btn btn-warning text-dark btn-block btn-lg font-weight-bold" OnClick="BtnReSetCheck_Click" />
                    </div>
                    <div id="divReSetPassword" runat="server" Visible="False" class="card-body">
                        <div class="form-group">
                            <label class="h5 font-weight-bold text-success" for="InputPassword">設定新密碼</label>
                            <asp:TextBox ID="TBoxReSetPassword" runat="server" CssClass="form-control" placeholder="輸入新密碼" TextMode="Password"></asp:TextBox>
                            <asp:Label ID="LabReSetPassword" runat="server" Text="未填密碼" ForeColor="#CC0000" Visible="False"></asp:Label>
                        </div>
                        <asp:Button ID="BtnReSetPassword" runat="server" Text="設定" CssClass="btn btn-success btn-block btn-lg font-weight-bold" OnClick="BtnReSetPassword_Click" />
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
