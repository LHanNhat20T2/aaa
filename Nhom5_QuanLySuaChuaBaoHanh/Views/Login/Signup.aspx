<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.Login.WebForm2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-KK94CHFLLe+nY2dmCWGMq91rCGa5gtU4mk92HdvYe+M/SXH301p5ILy+dN9+nJOZ" crossorigin="anonymous">
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            width: 300px;
            height: auto;
        }
        .button {
            float:right;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <div class="row">
                <div class="col-8 mt-2 p-5">
                    <h1 style="text-align:center; color:red">ĐĂNG KÝ</h1>
                    <div class="mb-3 row">
                        <label for="inputname" class="col-sm-2 col-form-label">Họ và tên:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputname">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="ipname" class="col-sm-2 col-form-label">Tên đăng nhập:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="ipname">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputpassword" class="col-sm-2 col-form-label">Mật khẩu:</label>
                        <div class="col-sm-10">
                            <div class="row g-3">
                                <div class="col-sm-7">
                                    <input type="text" class="form-control" placeholder="" aria-label="Pasword">
                                </div>
                                <div class="col-sm">
                                    <input type="text" class="form-control" placeholder="nhập lại mật khẩu" aria-label="Reset password">
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputday" class="col-sm-2 col-form-label">Ngày sinh:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputday">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputaddress" class="col-sm-2 col-form-label">Địa chỉ:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputaddress">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputemail" class="col-sm-2 col-form-label">Email</label>
                        <div class="col-sm-10">
                            <input type="email" class="form-control" id="inputemail">
                        </div>
                    </div>
                    <div class="mb-3 row">
                        <label for="inputphone" class="col-sm-2 col-form-label">SĐT:</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="inputphone">
                        </div>
                    </div>
                    <div class="button">
                        <asp:Button class="btn btn-info" ID="btnhuy" runat="server" Text="Đăng nhập" OnClick="btnhuy_Click" />
                        <asp:Button class="btn btn-danger" ID="btndangky" runat="server" Text="Đăng Ký" OnClick="btndangky_Click" />
                     </div>
                    <img src="../../Images/panalogup1.jpg" alt="Alternate Text" class="auto-style2 mt-3" />
                </div>
                <div class="col-4">
                    <img src="../../Images/panalogup.jpg" alt="Alternate Text" class="auto-style1" />
                </div>
            </div>
        </div>
    </form>
</body>
</html>
