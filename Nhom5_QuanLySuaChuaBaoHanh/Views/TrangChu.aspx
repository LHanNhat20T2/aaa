<%@ Page Title="" Language="C#" MasterPageFile="~/Views/KVL/KVL.Master" AutoEventWireup="true" CodeBehind="TrangChu.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.TrangChu" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    
    <div class="container px-0">
        <p class="h5">Dịch vụ sửa chữa</p>
        <div class="row">
            <asp:Repeater ID="Repeater1" runat="server">
                <ItemTemplate>
                    <div class="p-3 col-md-3">
                        <div class="card  p-3">
                        <a class="nav-link" href="/Views/ChiTietDichVuSuaChua.aspx?maDVSC=<%# Eval("Mã DVSC") %>&mp=<%# Request.QueryString["mp"] %>">
                        <asp:Image ID="Image1" runat="server" ImageUrl='<%# Eval("Hình ảnh") %>' Width="100%" Height="200px" CssClass="card-img-top" />
                        <div class="mt-2">
                            <p class="card-text"><%# Eval("Tên DVSC") %></p>
                        </div>
                            </a>
                    </div>
                    </div>
                    
                        
                </ItemTemplate>
                
            </asp:Repeater>
        </div>
    </div>
</asp:Content>
