<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="DinersRealEstateManagement.SYS.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>大來不動產後台管理系統</title>
    <link href="vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css"/>
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/ruang-admin.min.css" rel="stylesheet"/>
    <!-- Favicon-->
    <link rel="icon" type="image/x-icon" href="/assets/favicon.ico" />
</head>
<body class="bg-gradient-login">

    <!-- Login Content -->
    <div class="container-login">
        <div class="row justify-content-center">
            <div class="col-xl-6 col-lg-12 col-md-9">
                <div class="card shadow-sm my-5">
                    <div class="card-body p-0">
                        <div class="row">
                            <div class="col-lg-12">
                                <div class="login-form">
                                    <div class="text-center mb-2">
                                        <a class="navbar-brand" href="../index.aspx"><img src="/assets/logo-6-re.png" alt="logo" class="logo"/></a>
                                   </div>
                                    <div class="text-center">
                                        <h1 class="h4 text-gray-900 mb-4">大來不動產後台管理系統</h1>
                                    </div>
                                    <form id="form1" runat="server">
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox_Account" runat="server" CssClass="form-control" placeholder="請輸入帳號"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:TextBox ID="TextBox_Pwd" runat="server" CssClass="form-control" placeholder="請輸入密碼" TextMode="Password"></asp:TextBox>
                                        </div>
                                        <div class="form-group">
                                            <asp:Button ID="But_SignIn" runat="server" Text="登入" OnClick="But_SignIn_Click" CssClass="btn btn-primary btn-block btn-lg font-weight-bold" />
                                        </div>
                                        <asp:Label ID="Lab_showErr" runat="server" Text="帳號或密碼錯誤!" ForeColor="#CC0000" class="d-flex justify-content-center" Visible="False"></asp:Label>
                                    </form>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Login Content -->
    <script src="vendor/jquery/jquery.min.js"></script>
    <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="js/ruang-admin.min.js"></script>
</body>
</html>
