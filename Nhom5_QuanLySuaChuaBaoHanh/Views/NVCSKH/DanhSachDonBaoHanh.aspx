<%@ Page Title="" Language="C#" MasterPageFile="~/Views/NVCSKH/NVCSKH.Master" AutoEventWireup="true" CodeBehind="DanhSachDonBaoHanh.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.DanhSachDonBaoHanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h3>Danh sách đơn bảo hành</h3>
    <div class="row">
        <div class="col-md-3 mt-3 mb-3">
            <label for="lbLoaiSanPham" class="form-label">Loại sản phẩm</label>
            <asp:DropDownList ID="ddlLSP" runat="server" CssClass="form-select">
                <asp:ListItem Text="Tất cả" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Tủ lạnh"></asp:ListItem>
                <asp:ListItem Text="Điều hòa"></asp:ListItem>
                <asp:ListItem Text="..."></asp:ListItem>
                <asp:ListItem Text="..."></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-3 mt-3 mb-3">
            <label for="lbTTD" class="form-label">Trạng thái đơn</label>
            <asp:DropDownList ID="ddlTTD" runat="server" CssClass="form-select">
                <asp:ListItem Text="Tất cả" Selected="True"></asp:ListItem>
                <asp:ListItem Text="Chờ duyệt"></asp:ListItem>
                <asp:ListItem Text="Đã duyệt"></asp:ListItem>
                <asp:ListItem Text="Từ chối"></asp:ListItem>
                <asp:ListItem Text="Hoàn thành"></asp:ListItem>
            </asp:DropDownList>
        </div>
        <div class="col-md-3 ms-auto mt-3 mb-3">
            <label for="lbTimKiem" class="form-label">Tìm kiếm</label>
            <div class="input-group">
                <asp:TextBox ID="txtTimKiemDBH" CssClass="form-control" runat="server" placeholder="Nhập maDon" Enabled="true"></asp:TextBox>
                <asp:Button ID="btnTimKiemDBH" runat="server" Text="Tìm" CssClass="input-group-text btn btn-primary"/>
            </div>
        </div>
    </div>
    <asp:GridView ID="gvDSDonSuaChua" CssClass="table" runat="server" AutoGenerateColumns="false" AllowPaging="True" OnPageIndexChanging="gvDSDonSuaChua_PageIndexChanging" PageSize="5" OnRowCommand="gvDSDonSuaChua_RowCommand">
    <Columns>
        <asp:BoundField DataField="Mã đơn bảo hành" HeaderText="Mã đơn BH" />
        <asp:BoundField DataField="Loại sản phẩm" HeaderText="Loại sản phẩm" />
        <asp:BoundField DataField="Ngày đến" HeaderText="Ngày đến" DataFormatString="{0:dd/MM/yyyy}" />
        <asp:BoundField DataField="Giờ hẹn" HeaderText="Giờ hẹn" />
        <asp:BoundField DataField="Trạng thái đơn" HeaderText="Trạng thái đơn" />

        <asp:TemplateField>
            <ItemTemplate>
                <asp:Button ID="btnXemChiTiet" runat="server" CssClass="btn btn-primary" Text="Duyệt đơn" CommandName="ViewDetail" CommandArgument='<%# Eval("Mã đơn bảo hành") %>'/>
            </ItemTemplate>
        </asp:TemplateField>
    </Columns>
    </asp:GridView>
</asp:Content>
