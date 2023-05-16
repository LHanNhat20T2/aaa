using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.Admin
{
    public partial class DanhSachTaiKhoan : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Truy vấn dữ liệu từ database
                DataTable dt = GetDataFromDatabase();

                // Lưu trữ DataTable trong ViewState
                ViewState["DSTaiKhoanNhanVien"] = dt;

                // Gán dữ liệu cho GridView
                gvDSTaiKhoanNhanVien.DataSource = dt;
                gvDSTaiKhoanNhanVien.DataBind();
            }
        }

        private DataTable GetDataFromDatabase()
        {
            // Tạo DataTable mới với các cột được yêu cầu
            DataTable dt = new DataTable();
            dt.Columns.Add("Mã tài khoản");
            dt.Columns.Add("Tên tài khoản");
            dt.Columns.Add("Tên nhân viên");
            dt.Columns.Add("Quyền truy cập");
            dt.Columns.Add("Trạng thái tài khoản");

            // Thêm các hàng vào DataTable
            dt.Rows.Add("1", "NguyenVanA", "Nguyễn Văn A", "Quản trị viên", "Bình thường");
            dt.Rows.Add("2", "TranThiB", "Trần Thị B", "Kỹ thuật viên", "Khóa");
            dt.Rows.Add("3", "LeVanC", "Lê Văn C", "Kỹ thuật viên", "Bình thường");
            dt.Rows.Add("4", "PhamThiD", "Phạm Thị D", "Kỹ thuật viên", "Bình thường");
            dt.Rows.Add("5", "DoVanE", "Đỗ Văn E", "Kỹ thuật viên", "Khóa");
            dt.Rows.Add("6", "NguyenThiF", "Nguyễn Thị F", "CSKH", "Bình thường");
            dt.Rows.Add("7", "TranVanG", "Trần Văn G", "CSKH", "Khóa");
            dt.Rows.Add("8", "LeThiH", "Lê Thị H", "CSKH", "Bình thường");
            dt.Rows.Add("9", "PhamVanI", "Phạm Văn I", "CSKH", "Bình thường");
            dt.Rows.Add("10", "DoThiK", "Đỗ Thị K", "Quản lý", "Khóa");

            return dt;
        }

        protected void gvDSTaiKhoanNhanVien_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDSTaiKhoanNhanVien.PageIndex = e.NewPageIndex;

            // Lấy DataTable từ ViewState
            DataTable dt = (DataTable)ViewState["DSTaiKhoanNhanVien"];

            // Gán dữ liệu cho GridView từ DataTable lấy từ ViewState
            gvDSTaiKhoanNhanVien.DataSource = dt;
            gvDSTaiKhoanNhanVien.DataBind();
        }

        protected void gvDSTaiKhoanNhanVien_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetail")
            {
                // Lấy đơn sửa chữa tương ứng với ID được truyền vào CommandArgument
                string maDonSuaChua = e.CommandArgument.ToString();

                Response.Redirect("CapNhatTaiKhoanNhanVien.aspx?MaTaiKhoan=" + maDonSuaChua);
            }
        }

        protected void btnThemTKNV_Click(object sender, EventArgs e)
        {
            Response.Redirect("ThemTaiKhoanNhanVien.aspx");
        }
    }
}