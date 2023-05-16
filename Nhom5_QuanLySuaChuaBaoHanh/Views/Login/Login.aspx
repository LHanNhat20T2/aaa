<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .form-login {
            margin: 0 auto;
            width: 500px;
        }
        .btn {
            width: 100%;
        }
        .row {
            border: 1px solid black;
        }
    </style>
</head>
<body>  
    <form id="form1" runat="server">
        <div class="container">
            <div class="row mt-5">
                <div class="col-4">
                    <img src="../../Images/panalogin.jpg" alt="Alternate Text" class="auto-style1" />
                </div>
                <div class="col-8">
                    <h1 style="text-align:center; color:cadetblue">Đăng nhập</h1>
                    <div class="form-login">
                        <div class="mb-3">
                          <label for="exampleFormControlInput1" class="form-label">Tên tài khoản<span style="color: red">*</span></label>
                          <asp:TextBox ID="txtTenTaiKhoan" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                          <label for="exampleFormControlInput1" class="form-label">Mật khẩu<span style="color: red">*</span></label>
                          <asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server" CssClass="form-control"></asp:TextBox>
                        </div>
                        <div class="mb-3">
                            <asp:Button class="btn btn-primary" ID="btnlogin" runat="server" Text="Đăng nhập" OnClick="btnlogin_Click" />
                        </div>
                        <div class="mb-3">
                            <asp:Button class="btn btn-danger" ID="btnlogup" runat="server" Text="Đăng ký" OnClick="btnlogup_Click" />
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
    
</body>
</html>
