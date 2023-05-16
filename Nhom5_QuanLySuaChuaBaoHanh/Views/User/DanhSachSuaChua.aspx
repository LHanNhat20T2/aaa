<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/Users.Master" AutoEventWireup="true" CodeBehind="DanhSachSuaChua.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.User.DanhSachSuaChua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
      <link rel="stylesheet" href="../../CSS/UserStyle.css">
    <style>
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server" >
    <div class="container" style="margin-bottom: 100px; min-height: 350px">
        <h3 class="heading">Đơn sửa chữa</h3>
        <asp:GridView ID="gvDSDonSuaChua" class="grv__ds" runat="server" AutoGenerateColumns="False" AllowPaging="True" PageSize="5" >
            <Columns>
                <asp:BoundField DataField="STT" HeaderText="Mã đơn" ItemStyle-CssClass="col-md-2" ItemStyle-Width="100px">
<ItemStyle CssClass="col-md-2"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="LoaiSanPham" HeaderText="Dịch vụ SC" ItemStyle-Width="160px" />
                <asp:BoundField DataField="LoaiSuaChua" HeaderText="Loại sửa chữa"  ItemStyle-Width="220px"/>
                <asp:BoundField DataField="GiaTien" HeaderText="Giá tiền" DataFormatString="{0:#,##0} VNĐ" ItemStyle-Width="140px" />
                <asp:BoundField DataField="NgayDen" HeaderText="Ngày đến" DataFormatString="{0:d}" ItemStyle-CssClass="col-md-2" ItemStyle-Width="120px">
<ItemStyle CssClass="col-md-2"></ItemStyle>
                </asp:BoundField>
                <asp:BoundField DataField="GioHen" HeaderText="Giờ hẹn" ItemStyle-Width="140px"  /> 
                <asp:BoundField DataField="TrangThai" HeaderText="Trạng thái" ItemStyle-Width="162px" />
                <asp:TemplateField ItemStyle-CssClass="col-md-2" ItemStyle-Width="130px">
                    <ItemTemplate>
                        <asp:HyperLink runat="server" NavigateUrl="ChiTietSuaChua.aspx" Text="Xem chi tiết" CssClass="link__detail" />
                    </ItemTemplate>
<ItemStyle CssClass="col-md-2"></ItemStyle>
                </asp:TemplateField>
            </Columns>
        </asp:GridView>
         <div class="cta__control" style="margin:72px 126px 0 0">
            <asp:LinkButton runat="server" Text="Đăng ký sửa chữa" CSSClass="cta__btn" OnClick="RedirectToDangKySuaChua" />
        </div>
    </div>
</asp:Content>
