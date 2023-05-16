using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh
{
    public partial class DanhSachDonBaoHanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                // Truy vấn dữ liệu từ database
                DataTable dt = GetDataFromDatabase();

                // Lưu trữ DataTable trong ViewState
                ViewState["DSDonSuaChua"] = dt;

                // Gán dữ liệu cho GridView
                gvDSDonSuaChua.DataSource = dt;
                gvDSDonSuaChua.DataBind();
            }
        }

        private DataTable GetDataFromDatabase()
        {
            // Tạo DataTable mới với các cột được yêu cầu
            DataTable dt = new DataTable();
            dt.Columns.Add("Mã đơn bảo hành", typeof(string));
            dt.Columns.Add("Loại sản phẩm", typeof(string));
            dt.Columns.Add("Ngày đến", typeof(DateTime));
            dt.Columns.Add("Giờ hẹn", typeof(string));
            dt.Columns.Add("Trạng thái đơn", typeof(string));

            // Thêm các hàng vào DataTable
            dt.Rows.Add("1", "Tủ lạnh", new DateTime(2023, 4, 1), "08:00-09:00", "Hoàn thành");
            dt.Rows.Add("2", "Máy lạnh", new DateTime(2023, 4, 2), "09:00-10:00", "Chờ duyệt");
            dt.Rows.Add("3", "Bình nóng lạnh", new DateTime(2023, 4, 3), "11:00-12:00", "Từ chối");
            dt.Rows.Add("4", "Máy giặt", new DateTime(2023, 4, 4), "13:00-14:00", "Chờ duyệt");
            dt.Rows.Add("5", "Tủ lạnh", new DateTime(2023, 4, 5), "15:00-16:00", "Hoàn thành");
            dt.Rows.Add("6", "Bình nóng lạnh", new DateTime(2023, 4, 6), "16:00-17:00", "Đã duyệt");
            dt.Rows.Add("7", "Tủ lạnh", new DateTime(2023, 4, 7), "08:00-09:00", "Hoàn thành");
            dt.Rows.Add("8", "Máy giặt", new DateTime(2023, 4, 8), "10:00-11:00", "Chờ duyệt");
            dt.Rows.Add("9", "Bình nóng lạnh", new DateTime(2023, 4, 9), "11:00-12:00", "Đã duyệt");
            dt.Rows.Add("10", "Máy giặt", new DateTime(2023, 4, 10), "13:00-14:00", "Hoàn thành");

            return dt;
        }

        protected void gvDSDonSuaChua_PageIndexChanging(object sender, GridViewPageEventArgs e)
        {
            gvDSDonSuaChua.PageIndex = e.NewPageIndex;

            // Lấy DataTable từ ViewState
            DataTable dt = (DataTable)ViewState["DSDonSuaChua"];

            // Gán dữ liệu cho GridView từ DataTable lấy từ ViewState
            gvDSDonSuaChua.DataSource = dt;
            gvDSDonSuaChua.DataBind();
        }

        protected void gvDSDonSuaChua_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandName == "ViewDetail")
            {
                // Lấy đơn sửa chữa tương ứng với ID được truyền vào CommandArgument
                string maDonBaoHanh = e.CommandArgument.ToString();

                // Thực hiện chuyển hướng đến trang xem chi tiết đơn sửa chữa với đơn sửa chữa có ID là dsID
                Response.Redirect("ChiTietDonBaoHanh.aspx?MaDonBaoHanh=" + maDonBaoHanh);
            }
        }
    }
}