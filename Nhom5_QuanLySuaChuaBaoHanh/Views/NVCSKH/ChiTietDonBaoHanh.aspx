<%@ Page Title="" Language="C#" MasterPageFile="~/Views/NVCSKH/NVCSKH.Master" AutoEventWireup="true" CodeBehind="ChiTietDonBaoHanh.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.ChiTietDonBaoHanh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="mb-5">Duyệt đơn bảo hành</h2>
    <div class="row g-3 p-3" style="border: 1px solid black; border-radius: 10px">
        <h5 class="col-md-6 mt-2">Thông tin đơn</h5>
        <h5 class="col-md-6 mt-2 text-end"><asp:Label ID="maDon" runat="server" Text="Mã đơn: 0000001"></asp:Label></h5>
        <div class="col-md-4">
            <label for="lbTenKhachHang" class="form-label">Tên khách hàng</label>
            <asp:TextBox ID="txtTenKhachHang" CssClass="form-control" runat="server" Enabled="false">Lê Đức Tiên</asp:TextBox>
        </div>

        <div class="col-md-4">
            <label for="lbSoDienThoai" class="form-label">Số điện thoại</label>
            <asp:TextBox ID="txtSoDienThoai" CssClass="form-control" runat="server"  Enabled="false">0123412341</asp:TextBox>
        </div>

        <div class="col-md-4">
            <label for="inputEmail" class="form-label">Email</label>
            <asp:TextBox ID="txtEmail" CssClass="form-control" runat="server"  Enabled="false" type="email">ldt@gmail.com</asp:TextBox>
        </div>
        <div class="col-md-12">
            <label for="lbDiaChi" class="form-label">Địa chỉ</label>
            <asp:TextBox ID="txtDiaChi" CssClass="form-control" runat="server" Enabled="false">251 Hoàng Diệu, Nam Dương, Hải Châu, Đà Nẵng 550000</asp:TextBox>
        </div>
        <div class="col-md-4">
            <label for="lbNgayDen" class="form-label">Ngày đến</label>
            <asp:TextBox ID="txtNgayDen" CssClass="form-control" runat="server" Enabled="false">12/05/2023</asp:TextBox>
        </div>

        <div class="col-md-4">
            <label for="lbGioHen" class="form-label">Giờ hẹn</label>
            <asp:TextBox ID="txtGioHen" CssClass="form-control" runat="server" Enabled="false">15:00-16:00</asp:TextBox>
        </div>

        <div class="col-md-4">
            <label for="lbTenDichVu" class="form-label">Loại sản phẩm</label>
            <asp:TextBox ID="txtTenDichVu" CssClass="form-control" runat="server" Enabled="false">Tủ lạnh</asp:TextBox>
        </div>
        <div class="col-md-12">
            <label for="lbGhiChu" class="form-label">Ghi chú của khách hàng</label>
            <asp:TextBox ID="txtGhiChu" runat="server" CssClass="form-control" Rows="3" TextMode="MultiLine" Enabled="false"></asp:TextBox>
        </div>
        <div class="col-md-12">
            <label for="lbTenDichVu" class="form-label">Ảnh phiếu bảo hành</label>
            <asp:Image runat="server" ID="imgPhieuBaoHanh" ImageUrl="https://giahoply.vn/data/upload/mau-phieu-bao-hanh-may-lanh-panasonic-1.jpg" CssClass="rounded float-end form-control"/>
        </div>
        <h5 class="col-md-6 mt-4">Duyệt</h5>
        <h5 class="col-md-6 mt-4">Từ chối sửa chữa</h5>
        <div class="col-md-6">
            <label for="lbNVKT" class="form-label">Nhân viên kỹ thuật <span style="color: red">*</span></label>
            <asp:DropDownList ID="ddlNVKT" runat="server" CssClass="form-select">
                <asp:ListItem Text="Nguyễn Văn A - Số đơn đang xử lý 3" Selected="True"></asp:ListItem>
                <asp:ListItem Text="..."></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-6">
            <label for="lbLyDo" class="form-label">Lý do <span style="color: red">*</span></label>
            <asp:TextBox ID="txtLyDo" runat="server" CssClass="form-control" Rows="2" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="col-6">
            <asp:Button ID="btnDuyetBH" runat="server" Text="Duyệt" CssClass="btn btn-primary"/>
        </div>
        <div class="col-6">
            <asp:Button ID="btnTuChoiBH" runat="server" Text="Từ chối" CssClass="btn btn-danger"/>
        </div>
    </div>
</asp:Content>
