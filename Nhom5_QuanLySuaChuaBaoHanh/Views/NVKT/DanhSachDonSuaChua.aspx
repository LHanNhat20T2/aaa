<%@ Page Title="" Language="C#" MasterPageFile="~/Views/NVKT/NVKT.Master" AutoEventWireup="true" CodeBehind="DanhSachDonSuaChua.aspx.cs" Inherits="Nhom5_QuanLySuaChuaBaoHanh.Views.NVKT.DanhSachDonSuaChua" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-3 text-center border-end p-3">
                <h4 style="background-color: darkblue; color: white">Các đơn sửa chữa</h4>
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
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="ipdichvu" class="form-label">Dịch vụ</label>
                                <asp:TextBox ID="ipdichvu" CssClass="form-control" runat="server" Enabled="false">Sửa chữa tủ lạnh</asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="motacuakh" class="form-label">Mô tả của khách hàng</label>
                                <textarea class="form-control" id="motacuakh" disabled rows="3">Tủ lạnh không có điện</textarea>
                            </div>
                        </div>
                        <div class="col-6">
                            <div class="mb-3">
                                <label for="iploaisuachua" class="form-label">Loại sửa chữa </label>
                                <asp:TextBox ID="iploaisuachua" CssClass="form-control" runat="server" Enabled="false">Xử lý sự cố không lạnh</asp:TextBox>
                            </div>
                            <div class="mb-3">
                                <label for="ipghichu" class="form-label">Ghi chú của nhân viên</label>
                                <textarea class="form-control" id="ipghichu" rows="3"></textarea>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="price p-2">
                    <div class="row g-3">
                        <div class="col-sm-6">
                            <label for="lbGiaTien" class="form-label">Giá tiền</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtGiaTien" CssClass="form-control" runat="server" Enabled="false">350000</asp:TextBox>
                                <span class="input-group-text">VNĐ</span>
                            </div>

                        </div>
                        <div class="col-sm-6">
                            <label for="lbGiaTien" class="form-label">Giá tiền</label>
                            <div class="input-group">
                                <asp:TextBox ID="txtGiaPhatSinh" CssClass="form-control" runat="server" Enabled="true">350000</asp:TextBox>
                                <span class="input-group-text">VNĐ</span>
                            </div>

                        </div>
                        <div class="total float-end">
                            <div class="mb-3 row">
                                <label for="total" class="col-sm-2 col-form-label">Tổng tiền</label>
                                <div class="col-sm-10">
                                    <input type="text" readonly class="form-control-plaintext" id="total" value="3000000 vnd">
                                </div>
                            </div>
                        </div>
                    </div>


                </div>

                <div class="button float-end p-2">
                    <asp:Button class="btn btn-info" ID="btnchinhsua" runat="server" Text="Chỉnh sửa" />
                    <asp:Button class="btn btn-danger" ID="btnxn" runat="server" Text="Xác nhận hoàn thành" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
