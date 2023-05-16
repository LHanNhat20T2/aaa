<%@ Page Title="" Language="C#" MasterPageFile="~/Views/Admin/Admin.Master" AutoEventWireup="true" CodeBehind="DanhSachTaiKhoan.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.Admin.DanhSachTaiKhoan" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row ">
        <h3 class="col-md-4 me-auto">Danh sách tài khoản nhân viên</h3>
        <asp:Button ID="btnLuuTKNV" runat="server" Text="Thêm tài khoản" CssClass="btn btn-primary col-md-2" OnClick="btnThemTKNV_Click" />
    </div>
    <div class="row">
        <div class="col-md-3 mt-3 mb-3">
            <label for="lbQTC" class="form-label">Quyền truy cập</label>
            <asp:DropDownList ID="DropDownList1" runat="server" CssClass="form-select">
                <asp:ListItem Text="Tất cả" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Kỹ thuật viên"></asp:ListItem>
                <asp:ListItem Text="Quản lý"></asp:ListItem>
                <asp:ListItem Text="CSKH"></asp:ListItem>
                <asp:ListItem Text="Quản trị viên"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-3 mt-3 mb-3">
            <label for="lbTTTK" class="form-label">Trạng thái tài khoản</label>
            <asp:DropDownList ID="DropDownList2" runat="server" CssClass="form-select">
                <asp:ListItem Text="Tất cả" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Khóa"></asp:ListItem>
                <asp:ListItem Text="Bình thường"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-3 ms-auto mt-3 mb-3">
            <label for="lbTimKiem" class="form-label">Tìm kiếm</label>
            <div class="input-group">
                <asp:TextBox ID="txtTimKiem" CssClass="form-control" runat="server" placeholder="Nhập MaTK hoặc TenTaiKhoan" Enabled="true"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Tìm" CssClass="input-group-text btn btn-primary"/>
            </div>

        </div>
    </div>
   

    <asp:GridView ID="gvDSTaiKhoanNhanVien" CssClass="table" runat="server" AutoGenerateColumns="false" AllowPaging="True" OnPageIndexChanging="gvDSTaiKhoanNhanVien_PageIndexChanging" PageSize="5" OnRowCommand="gvDSTaiKhoanNhanVien_RowCommand">
    <Columns>
        <asp:BoundField DataField="Mã tài khoản" HeaderText="Mã tài khoản" />
        <asp:BoundField DataField="Tên tài khoản" HeaderText="Tên tài khoản" />
        <asp:BoundField DataField="Tên nhân viên" HeaderText="Tên nhân viên" />
        <asp:BoundField DataField="Quyền truy cập" HeaderText="Quyền truy cập" />
        <asp:BoundField DataField="Trạng thái tài khoản" HeaderText="Trạng thái tài khoản" />

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnSua" runat="server" CssClass="btn btn-warning" Text="Sửa" CommandName="ViewDetail" CommandArgument='<%# Eval("Mã tài khoản") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Content>
