<%@ Page Title="" Language="C#" MasterPageFile="~/Views/QL/QL.Master" AutoEventWireup="true" CodeBehind="CapNhatChinhSachBaoHanh.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.QL.CapNhatChinhSachBaoHanh" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../CSS/index1.css">
    <style>
    .pager-style a {
        display: inline-block;
        padding: 5px;
        margin: 5px;
        background-color: #007bff;
        color: #fff;
        border-radius: 5px;
        text-decoration: none;
    }

    .pager-style a:hover {
        background-color: #0062cc;
        color: #fff;
    }

    .pager-style span {
        display: inline-block;
        padding: 5px;
        margin: 5px;
        border-radius: 5px;
        background-color: #f0f0f0;
        color: #666;
        cursor: default;
    }
</style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>
        <div class="title2">
            <h1>Cập nhật chính sách bảo hành</h1>
        </div>
        <div class="content row">
            <div class="row g-3 align-items-center col-md-6">
                <div class="col-4">
                    <label for="lbLSP" class="col-form-label"><i class="fa-solid fa-star"></i>Loại sản phẩm</label>
                </div>
                <div class="col-8">
                    <asp:DropDownList ID="ddlLSP" runat="server" CssClass="form-select" Enabled="true">
                        <asp:ListItem Text="Điều hòa" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Tủ lạnh"></asp:ListItem>
                    </asp:DropDownList>
                </div>
            </div>
            <div class="row g-3 align-items-center col-md-6">
                <div class="col-4">
                    <label for="lbXuatXu" class="col-form-label"><i class="fa-solid fa-star"></i>Xuất xứ</label>
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtXuatXu" CssClass="form-control" runat="server" Enabled="true">Nhật bản</asp:TextBox>
                </div>
            </div>
            <div class="row g-3 align-items-center col-md-6">
                <div class="col-4">
                    <label for="lbTHBH" class="col-form-label">
                        <i class="fa-solid fa-star"></i>Thời hạn bảo hành
                            <br>
                        [Tháng]</label>
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtTHBH" CssClass="form-control" runat="server" Enabled="true" type="number">24</asp:TextBox>
                </div>
            </div>
            <div class="row g-3 align-items-center col-md-6">
                <div class="col-4">
                    <label for="lbTHBHDB" class="col-form-label"><i class="fa-solid fa-star"></i>Thời hạn đặc biệt</label>
                </div>
                <div class="col-8">
                    <asp:TextBox ID="txtTHBHDB" CssClass="form-control" runat="server" Enabled="true">bo mạch lạnh được bảo hành 36 tháng kể từ ngày sản xuất</asp:TextBox>
                </div>
            </div>
            <%--<div class="content1">
                <div class="content1a">
                    <div class="content1-1">
                        <p><i class="fa-solid fa-star"></i>Loại sản phẩm </p>
                        <select id="select" name="select">
                            <option value="option1">Lựa chọn 1</option>
                            <option value="option2">Lựa chọn 2</option>
                            <option value="option3">Lựa chọn 3</option>
                            <option value="option4">Lựa chọn 4</option>
                        </select>
                    </div>
                    <div class="content1-2">
                        <p><i class="fa-solid fa-star"></i>Xuất xứ</p>
                        <div class="p">
                            Nhật Bản
                        </div>
                    </div>
                </div>
                <div class="content1b">
                    <div class="content1-1">
                        <p><i class="fa-solid fa-star"></i>Thời hạn bảo hành
                            <br>
                            [Tháng]</p>
                         <asp:TextBox ID="txtTenKhachHang" CssClass="form-control" runat="server" Enabled="true">24</asp:TextBox>
                    </div>
                    <div class="content1-2">
                        <p><i class="fa-solid fa-star"></i>Thời hạn đặc biệt</p>
                        <div class="p">
                            bo mạch lạnh được bảo hành 36 tháng kể từ ngày sản xuất
                        </div>
                    </div>
                </div>
                <div class="content1-3"></div>
                <div class="content1-4"></div>
            </div>--%>
            <div class="content2">
                <div class="button-group">
                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="btn btn-secondary ms-2" Enabled="false" />
                    <asp:Button ID="btnSave" runat="server" Text="Lưu" CssClass="btn btn-primary ms-2" Enabled="false" />
                    <asp:Button ID="btnAdd" runat="server" Text="Thêm" CssClass="btn btn-success ms-2" />
                    <asp:Button ID="btnEdit" runat="server" Text="Chỉnh sửa" CssClass="btn btn-warning ms-2" />
                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CssClass="btn btn-danger ms-2" />
                    <%--<button class="cancel-button">Hủy</button>
                    <button class="add-button">Thêm</button>
                    <button class="update-button">Cập nhật</button>
                    <button class="delete-button">Xóa</button>--%>
                </div>
            </div>
            <div class="">
                <asp:GridView ID="MyGridView" runat="server" AutoGenerateColumns="false" CssClass="table table-bordered" AllowPaging="true"
                    PageSize="4" PagerSettings-Position="Bottom">
                    <Columns>
                        <asp:BoundField DataField="MaCS" HeaderText="Mã CS" />
                        <asp:BoundField DataField="LoaiSP" HeaderText="Loại SP" />
                        <asp:BoundField DataField="XuatXu" HeaderText="Xuất xứ" />
                        <asp:BoundField DataField="ThoiHanBH" HeaderText="Thời hạn BH" />
                        <asp:BoundField DataField="ThoiHanDB" HeaderText="Thời hạn ĐB" />
                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" />
                       <PagerStyle CssClass="pager-style" />
                </asp:GridView>
            </div>


        </div>
    </section>
</asp:Content>
