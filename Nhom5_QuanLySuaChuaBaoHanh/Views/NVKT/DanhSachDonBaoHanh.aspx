<%@ Page Title="" Language="C#" MasterPageFile="~/Views/NVKT/NVKT.Master" AutoEventWireup="true" CodeBehind="DanhSachDonBaoHanh.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.NVKT.DanhSachDonBaoHanh" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-3 text-center border-end p-3">
                <h4 style="background-color: darkblue;color: white">Các đơn bảo hành</h4>
                <asp:Button class="btn btn-info mb-3 p-2" Width="100%" ID="Button1" runat="server" Text="Đơn 1" />
                <asp:Button class="btn btn-info mb-3 p-2" Width="100%" ID="Button2" runat="server" Text="Đơn 2" />
                <asp:Button class="btn btn-info mb-3 p-2" Width="100%" ID="Button3" runat="server" Text="Đơn 3" />
                <asp:Button class="btn btn-info mb-3 p-2" Width="100%" ID="Button4" runat="server" Text="Đơn 4" />
                <asp:Button class="btn btn-info mb-3 p-2" Width="100%" ID="Button5" runat="server" Text="Đơn 5" />
                <asp:Button class="btn btn-info mb-3 p-2" Width="100%" ID="Button6" runat="server" Text="Đơn 6" />
                <asp:Button class="btn btn-info mb-3 p-2" Width="100%" ID="Button7" runat="server" Text="Đơn 7" />
            </div>
            <div class="col-8">
                <div class="infor-pro p-2">
                    <h4>Thông tin đơn</h4>
                    <div class="row">
                        <div class="col">
                            <div class="mb-3">
                                <label for="inputKH" class="form-label">Tên khách hàng</label>
                                <asp:TextBox ID="inputKH" runat="server" CssClass="form-control" Enabled="false">Nguyễn Đặng Kiều Diểm</asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="inputMD" class="form-label">Mã đơn</label>
                                <asp:TextBox ID="inputMD" CssClass="form-control" runat="server" Enabled="false">gjhkđmdt06</asp:TextBox>
                            </div>
                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label for="inputSDT" class="form-label">SĐT</label>
                                <asp:TextBox ID="inputSDT" CssClass="form-control" runat="server" Enabled="false">0336071752</asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="inputDAY" class="form-label">Ngày đến</label>
                                <asp:TextBox ID="inputDAY" CssClass="form-control" runat="server" Enabled="false">16/03/2022</asp:TextBox>
                            </div>
                        </div>
                        <div class="col">
                            <div class="mb-3">
                                <label for="inputadd" class="form-label">Địa Chỉ</label>
                                <asp:TextBox ID="inputadd" CssClass="form-control" runat="server" Enabled="false">77 Phạm Công Trứ</asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="inputtime" class="form-label">Giờ hẹn</label>
                                <asp:TextBox ID="inputtime" CssClass="form-control" runat="server" Enabled="false">07:00 AM</asp:TextBox>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="Atti-pro p-2">
                    <h4>Tình trạng sản phẩm</h4>
                    <div class="row">
                        <div class="col-8 p-1">
                            <div class="mb-3">
                                <label for="ipdichvu" class="form-label">Dịch vụ</label>
                                <asp:TextBox ID="ipdichvu" CssClass="form-control" runat="server" Enabled="false">sửa chữa tủ lạnh</asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="motacuakhachhang" class="form-label">Mô tả của khách hàng</label>
                                <textarea class="form-control" id="motacuakhachhang" disabled rows="3">máy lạnh bị hư nhiệt độ</textarea>
                            </div>
                            <div class="mb-3">
                                <label for="motacuanhanvien" class="form-label">Ghi chú của nhân viên</label>
                                <textarea class="form-control" id="motacuanhanvien" rows="3" ></textarea>
                            </div>
                            <div class="mb-3 row">
                                <label for="inputmoney" class="col-sm-3 col-form-label">Giá phát sinh</label>
                                <div class="col-sm-4">
                                    <input type="text" class="form-control" id="inputmoney" >
                                </div>
                            </div>
                            <div class="mb-3 row">
                                <label for="total" class="col-sm-2 col-form-label">Tổng tiền</label>
                                <div class="col-sm-4">
                                    <input type="text" readonly class="form-control-plaintext" id="total" value="0 vnd">
                                </div>
                            </div>
                        </div>
                        <div class="col-4 p-1">
                             <img src="https://giahoply.vn/data/upload/mau-phieu-bao-hanh-may-lanh-panasonic-1.jpg" class="rounded float-end form-control" style="height:350px" alt="...">
                        </div>
                    </div>
                </div>
                <div class="button float-end">
                    <asp:Button class="btn btn-info" ID="btnchinhsua" runat="server" Text="Chỉnh sửa" />
                    <asp:Button class="btn btn-danger" ID="btnxn" runat="server" Text="Xác nhận hoàn thành" />
                </div>                
            </div>
        </div>
    </div>
</asp:Content>
