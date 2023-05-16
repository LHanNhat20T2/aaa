<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/Users.Master" AutoEventWireup="true" CodeBehind="DanhSachBaoHanh.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.User.DanhSachBaoHanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="../../CSS/UserStyle.css">
    <style>
            .grv__ds {
                background: red;
            }
            .row__nav {
              margin-left: 102px;
            }

            .grv__ds td:nth-child(3) {
                    max-width: 186px
            }
             .nav__link1 {
                 font-size: 2.4rem;
             }

            .subnav-link {
                display: inline-block;
                font-size: 2rem;
                min-width: 270px;
                padding: 8px 16px;
            }

            .subnav {
                top: 100%;
                left: 28px;
            }

            .nav__list li:hover .nav__link1::after {
                display: none;
            }

            .nav .subnav li:hover .nav__link1 {
                background-color: #ccc;
            }

            .nav .subnav li:hover .nav__link1, .nav__list > li:hover > .nav__link1 {
                color: rgba(17, 52, 143, 0.96);
                text-shadow: 1px 0 0 currentColor;
            }             
    </style>
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container" style="margin-bottom: 100px">
        <h3 class="heading">Đơn bảo hành</h3>
        <asp:GridView ID="gvDSDonSuaChua" class="grv__ds" runat="server" AutoGenerateColumns="false" AllowPaging="True" PageSize="5" >
            <Columns>
                <asp:BoundField DataField="STT" HeaderText="Mã đơn" ItemStyle-CssClass="col-md-2" />
                <asp:BoundField DataField="LoaiSanPham" HeaderText="Loại sản phẩm"  />
                <asp:BoundField DataField="NgayDen" HeaderText="Ngày đến" DataFormatString="{0:dd/MM/yyyy}" ItemStyle-CssClass="col-md-2" />
                <asp:BoundField DataField="GioHen" HeaderText="Giờ hẹn"  />
                <asp:BoundField DataField="TrangThai" HeaderText="Trạng thái" ItemStyle-Width="160px" />
                <asp:TemplateField ItemStyle-CssClass="col-md-2">
                    <ItemTemplate>
                        <asp:HyperLink runat="server" NavigateUrl="ChiTietBaoHanh.aspx" Text="Xem chi tiết" CssClass="link__detail" />
                    </ItemTemplate>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         <div class="cta__control" style="margin:72px 126px 0 0">
            <asp:LinkButton runat="server" Text="Đăng ký bảo hành" CSSClass="cta__btn" OnClick="RedirectToDangKyBaoHanh" />
        </div>
    </div>
</asp:Content>
