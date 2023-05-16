<%@ Page Title="" Language="C#" MasterPageFile="~/Views/QL/QL.Master" AutoEventWireup="true" CodeBehind="CapNhatDichVuSuaChua.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.QL.CapNhatDichVuSuaChua" %>

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
            <h1>Cập nhật dịch vụ</h1>
        </div>

        <div class="content row">
            <div class="col-4">
                <asp:Image ID="Image1" runat="server" CssClass="img-content" ImageUrl="data:image/jpeg;base64,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" />
                <asp:FileUpload ID="FileUpload1" class="content__item-tbox fileUpLoad" runat="server" accept="image/*" Text="Chọn ảnh" title="" />
                <div class="row g-3 align-items-center col-12 mb-3 mt-0">
                    <div class="col-4">
                        <label for="lbTenLSC" class="col-form-label"><i class="fa-solid fa-star"></i>Tên LSC</label>
                    </div>
                    <div class="col-8">
                        <asp:TextBox ID="txtTenLSC" CssClass="form-control" runat="server" Enabled="true">Sửa chữa tủ lạnh</asp:TextBox>
                    </div>
                </div>
            </div>

            <div class="col-8">
                <div class="button-group">
                    <asp:Button ID="btnCancel" runat="server" Text="Hủy" CssClass="btn btn-secondary ms-2" Enabled="false" />
                    <asp:Button ID="btnSave" runat="server" Text="Lưu" CssClass="btn btn-primary ms-2" Enabled="false" />
                    <asp:Button ID="btnAdd" runat="server" Text="Thêm" CssClass="btn btn-success ms-2" />
                    <asp:Button ID="btnEdit" runat="server" Text="Chỉnh sửa" CssClass="btn btn-warning ms-2" />
                    <asp:Button ID="btnDelete" runat="server" Text="Xóa" CssClass="btn btn-danger ms-2" />
                    <%--                    <button class="cancel-button">Hủy</button>
                    <button class="add-button">Thêm</button>
                    <button class="update-button">Cập nhật</button>
                    <button class="delete-button">Xóa</button>--%>
                </div>
                
                <div class="">

                   <asp:GridView ID="MyGridView" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                    PageSize="4" PagerSettings-Position="Bottom" CssClass="table table-bordered">
                    <Columns>
                        <asp:BoundField DataField="MaDVSC" HeaderText="Mã DVSC" />
                        <asp:BoundField DataField="TenDVSC" HeaderText="Tên DVSC" />
                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" />
                       <PagerStyle CssClass="pager-style" />
                </asp:GridView>
                </div>
            </div>
        </div>

    </section>
</asp:Content>
