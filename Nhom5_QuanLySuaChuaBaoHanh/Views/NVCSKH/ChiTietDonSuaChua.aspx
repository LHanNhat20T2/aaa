<%@ Page Title="" Language="C#" MasterPageFile="~/Views/NVCSKH/NVCSKH.Master" AutoEventWireup="true" CodeBehind="ChiTietDonSuaChua.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.ChiTietDonSuaChua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="mb-5">Duyệt đơn sửa chữa</h2>
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
        <div class="col-md-6">
            <label for="lbNgayDen" class="form-label">Ngày đến</label>
            <asp:TextBox ID="txtNgayDen" CssClass="form-control" runat="server" Enabled="false">12/05/2023</asp:TextBox>
        </div>

        <div class="col-md-6">
            <label for="lbGioHen" class="form-label">Giờ hẹn</label>
            <asp:TextBox ID="txtGioHen" CssClass="form-control" runat="server" Enabled="false">15:00-16:00</asp:TextBox>
        </div>

        <div class="col-md-4">
            <label for="lbTenDichVu" class="form-label">Tên dịch vụ</label>
            <asp:TextBox ID="txtTenDichVu" CssClass="form-control" runat="server" Enabled="false">Sửa chữa tủ lạnh</asp:TextBox>
        </div>

        <div class="col-md-4">
            <label for="lbLoaiSuaChua" class="form-label">Loại sửa chữa</label>
            <asp:TextBox ID="txtLoaiSuaChua" CssClass="form-control" runat="server" Enabled="false">Xử lý sự cố không lạnh</asp:TextBox>
        </div>
        
        <div class="col-md-4">
            <label for="lbGiaTien" class="form-label">Giá tiền</label>
            <div class="input-group">
                <asp:TextBox ID="txtGiaTien" CssClass="form-control" runat="server" Enabled="false">350000</asp:TextBox>
                <span class="input-group-text">VNĐ</span>
            </div>

        </div>
        <div class="col-md-12">
            <label for="lbGhiChu" class="form-label">Ghi chú của khách hàng</label>
            <asp:TextBox ID="txtGhiChu" runat="server" CssClass="form-control" Rows="3" TextMode="MultiLine" Enabled="false"></asp:TextBox>
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
            <label for="txtLyDo" class="form-label">Lý do <span style="color: red">*</span></label>
            <asp:TextBox ID="txtLyDo" runat="server" CssClass="form-control" Rows="2" TextMode="MultiLine"></asp:TextBox>
        </div>
        <div class="col-6">
            <asp:Button ID="btnDuyetSC" runat="server" Text="Duyệt" CssClass="btn btn-primary"/>
        </div>
        <div class="col-6">
            <asp:Button ID="btnTuChoiSC" runat="server" Text="Từ chối" CssClass="btn btn-danger"/>
        </div>
    </div>
</asp:Content>
