<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="CapNhatTaiKhoanNhanVien.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.Admin.CapNhatTaiKhoanNhanVien" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="mb-5">Cập nhật tài khoản nhân viên</h2>
    
    <div class="row g-3 mb-5">
        <h5 class="col-md-6 mt-2">Thông tin tài khoản</h5>
        <h5 class="col-md-6 mt-2 text-end"><asp:Label ID="maTK" runat="server" Text="Mã tài khoản: 0000001"></asp:Label></h5>
        <div class="col-md-4">
            <label for="lbTenTaiKhoan" class="form-label">Tên tài khoản<span style="color: red">*</span></label>
            <asp:TextBox ID="txtTenTaiKhoan" runat="server" CssClass="form-control">QL00001</asp:TextBox>
        </div>
        <div class="col-md-4">
            <label for="lbMatKhau" class="form-label">Mật khẩu <span style="color: red">*</span></label>
            <asp:TextBox ID="txtMatKhau" TextMode="Password" runat="server" CssClass="form-control" value="123123"></asp:TextBox>
        </div>
        <div class="col-md-4">
            <label for="lbQTC" class="form-label">Quyền truy cập<span style="color: red">*</span></label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                <asp:ListItem Text="Kỹ thuật viên" ></asp:ListItem>
                <asp:ListItem Text="Quản lý" Selected="True"></asp:ListItem>
                <asp:ListItem Text="CSKH"></asp:ListItem>
                <asp:ListItem Text="Quản trị viên"></asp:ListItem>
            </asp:DropDownList>
        </div>
    </div>

    <div class="row g-3">
        <h5 class="col-md-12 mt-2">Thông tin nhân viên</h5>
        <div class="col-md-6">
            <label for="lbTenTaiKhoan" class="form-label">Họ tên nhân viên<span style="color: red">*</span></label>
            <asp:TextBox ID="txtHoTenNV" runat="server" CssClass="form-control">Lê Đức Tiên</asp:TextBox>
        </div>

        <div class="col-md-6">
            <label for="lbCCCD" class="form-label">CCCD<span style="color: red">*</span></label>
            <asp:TextBox ID="txtCCCD" runat="server" CssClass="form-control">123123123</asp:TextBox>
        </div>

        <div class="col-md-6">
            <label for="lbSoDT" class="form-label">Số điện thoại<span style="color: red">*</span></label>
            <asp:TextBox ID="txtSoDT" runat="server" CssClass="form-control">0123412341</asp:TextBox>
        </div>

        <div class="col-md-6">
            <label for="lbEmail" class="form-label">Email<span style="color: red">*</span></label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="form-control">ldt@gmail.com</asp:TextBox>
        </div>

        <div class="col-md-12">
            <label for="lbDiaChi" class="form-label">Địa chỉ<span style="color: red">*</span></label>
            <asp:TextBox ID="txtDiaChi" runat="server" CssClass="form-control"> 81 Đống Đa, Đà Nẵng</asp:TextBox>
        </div>
        <asp:Button ID="btnLuuTKNV" runat="server" Text="Lưu" CssClass="btn btn-primary col-md-1 mt-4"/>
        <asp:Button ID="btnKhoaTKNV" runat="server" Text="Khóa tài khoản" CssClass="btn btn-warning col-md-2 mt-4 ms-5"/>
    </div>
</asp:Content>
