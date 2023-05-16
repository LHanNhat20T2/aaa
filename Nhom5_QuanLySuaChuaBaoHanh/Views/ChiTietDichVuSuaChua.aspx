<%@ Page Title="" Language="C#" MasterPageFile="~/Views/KVL/KVL.Master" AutoEventWireup="true" CodeBehind="ChiTietDichVuSuaChua.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.ChiTietDichVuSuaChua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
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
    <div class="container">
        <div class="row">
            <asp:Label ID="lbDVSC" runat="server" Text="Dịch vụ sửa chữa máy giặt" CssClass="h5"></asp:Label>
            <asp:Image CssClass="col-md-4 img-thumbnail" ID="Image1" runat="server" ImageUrl="https://dienlanhcholon.com/wp-content/uploads/2019/06/sua-may-giat-hcm.jpg"/>
            <div class="col-md-8">
                <asp:GridView ID="MyGridView" runat="server" AutoGenerateColumns="false" AllowPaging="true"
                    PageSize="4" PagerSettings-Position="Bottom" CssClass="table table-bordered">
                    <Columns>
                        <asp:BoundField DataField="TenLSC" HeaderText="Tên Loại sửa chữa" />
                        <asp:BoundField DataField="GiaTien" HeaderText="Giá tiền" />
                    </Columns>
                    <PagerSettings Mode="NumericFirstLast" />
                       <PagerStyle CssClass="pager-style" />
                </asp:GridView>
            </div>
        </div>
    </div>
</asp:Content>
