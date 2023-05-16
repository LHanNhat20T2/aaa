<%@ Page Title="" Language="C#" MasterPageFile="~/Views/User/Users.Master" AutoEventWireup="true" CodeBehind="DangKySuaChua.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.User.DangKySuaChua" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
    <link rel="stylesheet" type="text/css" href="../../CSS/UserStyle.css" />
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
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h2 class="heading">Đăng ký sửa chữa</h2>
    <div class="content">
        <div class="row">
            <div class="col-md-6">
                <div class="content__item">
                    <label class="label" for="">Dịch vụ SC</label>
                    <asp:DropDownList class="dropList" ID="DropDownList1" runat="server">
                        <asp:ListItem Text="" Value="option" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Sửa máy giặt" Value="suamaygiat"></asp:ListItem>
                        <asp:ListItem Text="Sửa tủ lạnh" Value="suamaylanh"></asp:ListItem>
                        <asp:ListItem Text="Sửa điều hòa" Value="suadieuhoa"></asp:ListItem>
                    </asp:DropDownList>
               </div>
               <div class="content__item">
                    <label class="label"  for="">Loại sửa chữa</label>
                    <asp:DropDownList class="dropList" ID="DropDownList2" runat="server">
                        <asp:ListItem Text="" Value="option" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="Không cấp nước ~ 350.000 VNĐ" Value="suamaygiat"></asp:ListItem>
                        <asp:ListItem Text="Đèn tủ hỏng ~ 450.000 VNĐ" Value="suamaylanh"></asp:ListItem>
                        <asp:ListItem Text="Quạt không mát ~ 550.000 VNĐ" Value="suadieuhoa"></asp:ListItem>
                    </asp:DropDownList>
               </div>
               <div class="content__item">
                    <label class="label"  for="">Ngày đến</label>
                   <asp:TextBox type="date" ID="txtTime" CssClass="content__item-tbox tb__time" runat="server"></asp:TextBox>
               </div>
               <div class="content__item">
                    <label class="label"  for="">Giờ hẹn</label>
                    <asp:DropDownList  class="dropList" ID="DropDownList3" runat="server">
                        <asp:ListItem Text="" Value="option" Selected="True"></asp:ListItem>
                        <asp:ListItem Text="9:00 - 9:59" Value=""></asp:ListItem>
                        <asp:ListItem Text="10:00 - 10:59" Value=""></asp:ListItem>
                        <asp:ListItem Text="11:00 - 11:59" Value=""></asp:ListItem>
                    </asp:DropDownList>
               </div>       
            </div> 
            <div class="col-md-6">
               <div class="content__item">
                   <label class="label"  for="sdt">Số điện thoại</label>
                   <asp:TextBox ID="TextBox1" runat="server" class="content__item-tbox"></asp:TextBox>
               </div> 
               <div class="content__item">
                   <label class="label"  for="Địa chỉ">Địa chỉ</label>
                   <asp:TextBox ID="TextBox2" runat="server" class="content__item-tbox"></asp:TextBox>
               </div>
               <div class="content__item">
                   <label class="label"  for="mota">Mô tả</label>
                   <asp:TextBox ID="txtTextArea" CssClass="content__item-tbox tbox__tboxmul" runat="server" TextMode="MultiLine" Rows="3" Columns="20"></asp:TextBox>
               </div>
            </div>
       </div> 
        <span class="note">** Chú thích:</span>
        <p class="desc">Các chi phí dịch vụ sửa chữa có thể phát sinh</p>
        <div class="cta__control">
            <asp:LinkButton runat="server" Text="Đăng ký sửa chữa" CSSClass="cta__btn" OnClick="RedirectToDanhSachSuaChua" />
        </div>
    </div>
</asp:Content>
