<%@ Page Title="" Language="C#" MasterPageFile="~/SYS/backSideSite.Master" AutoEventWireup="true" CodeBehind="newsManag.aspx.cs" Inherits="DinersRealEstateManagement.SYS.newsManag1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container-fluid" id="container-wrapper">
        <div class="my-4 ">
            <h1 class="h3 mb-0 text-gray-800">最新消息管理</h1>
        </div>
        <div class="row">
            <div class="col-lg-12 mb-4">
                <div class="card">
                    <asp:Panel ID="Pane_view" runat="server" CssClass="card-body">
                        <asp:Button ID="Btn_Add" runat="server" Text="新增最新消息" OnClick="Btn_Add_Click" CssClass="btn btn-primary btn-lg mb-4 font-weight-bold" />
                        <asp:GridView ID="NewsList_GridView" runat="server" AllowPaging="True" AutoGenerateColumns="False" CellPadding="4" DataKeyNames="id" DataSourceID="SqlDataSource1" ForeColor="#333333" GridLines="None" Width="100%">
                            <AlternatingRowStyle BackColor="White" ForeColor="#284775" />
                            <Columns>
                                <asp:BoundField DataField="id" HeaderText="id" InsertVisible="False" ReadOnly="True" SortExpression="id" Visible="False" />
                                <asp:CommandField ButtonType="Button" CancelText="取消" DeleteText="刪除" EditText="編輯" HeaderText="編輯" InsertText="新增" NewText="更新" SelectText="選取" ShowEditButton="True"  ControlStyle-CssClass='btn btn-primary btn-block' ControlStyle-BorderColor="#66CCFF" ControlStyle-BorderStyle="Solid" ControlStyle-BorderWidth="1px" ControlStyle-ForeColor="White" >
                                    <ControlStyle BorderColor="#66CCFF" BorderWidth="1px" BorderStyle="Solid" CssClass="btn btn-primary btn-block" ForeColor="White"></ControlStyle>
                                </asp:CommandField>
                                <asp:BoundField DataField="releaseDate" HeaderText="發布日期" SortExpression="releaseDate" DataFormatString="{0:yyyy-MM-dd}" />
                                <asp:BoundField DataField="title" HeaderText="標題內容" SortExpression="title" ControlStyle-Width="100%" />
                                <asp:BoundField DataField="createDate" HeaderText="建立日期" SortExpression="createDate" ReadOnly="True" DataFormatString="{0:yyyy-MM-dd}" />
                                <asp:TemplateField HeaderText="刪除" ShowHeader="False">
                                    <ItemTemplate>
                                        <asp:LinkButton ID="BtnDeleteCountry" runat="server" CommandName="Delete" Text="刪除" OnClientClick="return confirm('確認刪除？')" CausesValidation="False"></asp:LinkButton>
                                    </ItemTemplate>
                                    <ControlStyle BorderColor="#66CCFF" BorderStyle="Solid" BorderWidth="1px" CssClass="btn btn-danger btn-block" ForeColor="White" />
                                </asp:TemplateField>
                            </Columns>
                            <EditRowStyle BackColor="#999999" />
                            <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White" />
                            <PagerStyle BackColor="#284775" ForeColor="White" HorizontalAlign="Center" />
                            <RowStyle BackColor="#F7F6F3" ForeColor="#333333" />
                            <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333" />
                            <SortedAscendingCellStyle BackColor="#E9E7E2" />
                            <SortedAscendingHeaderStyle BackColor="#506C8C" />
                            <SortedDescendingCellStyle BackColor="#FFFDF8" />
                            <SortedDescendingHeaderStyle BackColor="#6F8DAE" />
                        </asp:GridView>
                        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" SelectCommand="SELECT * FROM [newsList] ORDER BY [releaseDate] DESC" DeleteCommand="DELETE FROM [newsList] WHERE [id] = @id" UpdateCommand="UPDATE [newsList] SET [title] = @title, [releaseDate] = @releaseDate WHERE [id] = @id">
                            <DeleteParameters>
                                <asp:Parameter Name="id" Type="Int32" />
                            </DeleteParameters>
                            <UpdateParameters>
                                <asp:Parameter Name="title" Type="String" />
                                <asp:Parameter Name="releaseDate" Type="DateTime" />
                                <asp:Parameter Name="id" Type="Int32" />
                            </UpdateParameters>
                        </asp:SqlDataSource>
                    </asp:Panel>

                    <asp:Panel ID="Panel_Edit" runat="server" CssClass="card-body" Visible="False">
                        <asp:Button ID="cancel" runat="server" Text="返回" CssClass="btn btn-primary" OnClick="cancel_Click" />
                        <hr />
                        <div class="form-group mt-5">
                            <h5 class="font-weight-bold text-info">發布時間</h5>
                            <asp:Calendar ID="Calendar_ReleaseDate" runat="server" BackColor="White" BorderColor="#3366CC" BorderWidth="1px" CellPadding="1" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#003399" Height="200px" Width="220px">
                                <DayHeaderStyle BackColor="#99CCCC" ForeColor="#336666" Height="1px" />
                                <NextPrevStyle Font-Size="8pt" ForeColor="#CCCCFF" />
                                <OtherMonthDayStyle ForeColor="#999999" />
                                <SelectedDayStyle BackColor="#009999" Font-Bold="True" ForeColor="#CCFF99" />
                                <SelectorStyle BackColor="#99CCCC" ForeColor="#336666" />
                                <TitleStyle BackColor="#003399" BorderColor="#3366CC" BorderWidth="1px" Font-Bold="True" Font-Size="10pt" ForeColor="#CCCCFF" Height="25px" />
                                <TodayDayStyle BackColor="#99CCCC" ForeColor="White" />
                                <WeekendDayStyle BackColor="#CCCCFF" />
                            </asp:Calendar>
                        </div>
                        <asp:Label ID="Label_ID" runat="server" Visible="False"></asp:Label>
                        <div class="form-group">
                            <h5 for="InputTitle" class="font-weight-bold text-info">標題內容</h5>
                            <asp:TextBox ID="InputTitle" runat="server" CssClass="form-control" placeholder="輸入標題" TextMode="MultiLine"></asp:TextBox>
                            <asp:Label ID="Label_Err" runat="server" Text="未填標題" ForeColor="#CC0000" Visible="False"></asp:Label>
                        </div>
                        
                        <asp:Button ID="submit" runat="server" Text="送出" CssClass="btn btn-primary btn-block btn-lg font-weight-bold" OnClick="submit_Click" />
                        
                    </asp:Panel>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
