<%@ Page Title="" Language="C#" MasterPageFile="~/Views/QL/QL.Master" AutoEventWireup="true" CodeBehind="CapNhatLoaiSuaChua.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.QL.CapNhatLoaiSuaChua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" href="../../CSS/index3.css">
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
            <h1>Cập nhật dịch vụ sửa chữa</h1>
        </div>
        <div class="content row">
            <div class="col-4">
                <div class="row g-3 align-items-center col-12 mb-3 mt-5">
                    <div class="col-4">
                        <label for="lbDVSC" class="col-form-label"><i class="fa-solid fa-star"></i>Dịch vụ</label>
                    </div>
                    <div class="col-7">
                        <asp:DropDownList ID="ddlDVSC" runat="server" CssClass="form-select" Enabled="true">
                            <asp:ListItem Text="Sửa chữa điều hòa" Selected="True"></asp:ListItem>
                            <asp:ListItem Text="Sửa chữa tủ lạnh"></asp:ListItem>
                            <asp:ListItem Text="Sửa chữa máy giặt"></asp:ListItem>
                        </asp:DropDownList>
                    </div>
                    <a href="/Views/QL/CapNhatDichVuSuaChua.aspx" class="plus col-1"><i class="fa-solid fa-circle-plus"></i></a>
                </div>
                <div class="row g-3 align-items-center col-12 mb-3">
                    <div class="col-4">
                        <label for="lbGiaTien" class="col-form-label"><i class="fa-solid fa-star"></i>Giá tiền</label>
                    </div>
                    <div class="col-8">
                        <div class="input-group">
                            <asp:TextBox ID="txtGiaTien" CssClass="form-control" runat="server" Enabled="true">350000</asp:TextBox>
                            <span class="input-group-text">VNĐ</span>
                        </div>
                    </div>
                </div>
                <div class="row g-3 align-items-center col-12 mb-3">
                    <div class="col-4">
                        <label for="lbTenLSC" class="col-form-label"><i class="fa-solid fa-star"></i>Tên LSC</label>
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="txtTenLSC" CssClass="form-control" runat="server" Enabled="true">Xử lý sự cố không lạnh</asp:TextBox>
                    </div>
                </div>
                <%--<div class="contenta">
                    <p><i class="fa-solid fa-star"></i>Dịch vụ</p>
                    <select id="select" name="select">
                        <option value="option1">Lựa chọn 1</option>
                        <option value="option2">Lựa chọn 2</option>
                        <option value="option3">Lựa chọn 3</option>
                        <option value="option4">Lựa chọn 4</option>
                    </select>
                    <div class="plus"><i class="fa-solid fa-circle-plus"></i></div>
                </div>
                <div class="contentb">
                    <p><i class="fa-solid fa-star"></i>Dịch vụ</p>
                    <div class="cord"><span>350.000</span><span>VND</span></div>
                </div>
                <div class="contentc">
                    <p class="c"><i class="fa-solid fa-star"></i>Loại sửa chữa </p>
                    <div class="cod">Xử lý sự cố không lạnh</div>
                </div>--%>
            </div>
            <div class="col-8">
                <div class="button-group">
                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="btn btn-secondary ms-2" Enabled="false"/>
                    <asp:Button ID="btnSave" runat="server" Text="Lưu" CssClass="btn btn-primary ms-2" Enabled="false"/>
                    <asp:Button ID="btnAdd" runat="server" Text="Thêm" CssClass="btn btn-success ms-2"/>
                    <asp:Button ID="btnEdit" runat="server" Text="Chỉnh sửa" CssClass="btn btn-warning ms-2"/>
                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CssClass="btn btn-danger ms-2"/>
                    <%--<button class="cancel-button">Hủy</button>
                    <button class="add-button">Thêm</button>
                    <button class="update-button">Cập nhật</button>
                    <button class="delete-button">Xóa</button>--%>
                </div>
                <div class="">
                    <asp:GridView ID="MyGridView" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                    PageSize="4" PagerSettings-Position="Bottom" CssClass="table table-bordered">
                    <Columns>
                        <asp:BoundField DataField="MaLSC" HeaderText="Mã LSC" />
                        <asp:BoundField DataField="DVSC" HeaderText="Dịch vụ" />
                        <asp:BoundField DataField="GiaTien" HeaderText="Giá tiền" />
                        <asp:BoundField DataField="TenLSC" HeaderText="Tên LSC" />
                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" />
                       <PagerStyle CssClass="pager-style" />
                </asp:GridView>
                </div>
                
            </div>
        </div>

    </section>
</asp:Content>
