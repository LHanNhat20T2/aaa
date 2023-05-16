using System;
using System.Collections.Generic;
using System.Data;
using System.Globalization;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.User
{
    public partial class DanhSachBaoHanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Tạo DataTable
                DataTable dt = new DataTable();
                dt.Columns.Add("STT");
                dt.Columns.Add("LoaiSanPham");
                dt.Columns.Add("NgayDen");
                dt.Columns.Add("GioHen");
                dt.Columns.Add("TrangThai");

                // Thêm dữ liệu vào DataTable
                DataRow row1 = dt.NewRow();
                row1["STT"] = "1";
                row1["LoaiSanPham"] = "Điều hòa";
                row1["NgayDen"] = DateTime.Now.Date.ToShortDateString();
                row1["GioHen"] = "09:00 - 09:59";
                row1["TrangThai"] = "Chờ duyệt";
                dt.Rows.Add(row1);

                // Thêm dữ liệu vào DataTable
                string ngayCuuThe2 = "03/08/2023";
                DateTime ngay2 = DateTime.ParseExact(ngayCuuThe2, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                DataRow row2 = dt.NewRow();
                row2["STT"] = "2";
                row2["LoaiSanPham"] = "Tủ lạnh";
                row2["NgayDen"] = ngay2.ToString("d");
                row2["GioHen"] = "10:00 - 10:59";
                row2["TrangThai"] = "Đã hoàn thành";
                dt.Rows.Add(row2);

                // Thêm dữ liệu vào DataTable
                string ngayCuuThe3 = "12/04/2023";
                DateTime ngay3 = DateTime.ParseExact(ngayCuuThe3, "dd/MM/yyyy", CultureInfo.InvariantCulture);
                DataRow row3 = dt.NewRow();
                row3["STT"] = "3";
                row3["LoaiSanPham"] = "Điều hòa";
                row3["NgayDen"] = ngay3.ToString("d");
                row3["GioHen"] = "11:00 - 11:59";
                row3["TrangThai"] = "Đã hoàn thành";
                dt.Rows.Add(row3);

                // Gán DataSource cho GridView
                gvDSDonSuaChua.DataSource = dt;
                gvDSDonSuaChua.DataBind();
            }
        }
        protected void RedirectToDangKyBaoHanh(object sender, EventArgs e)
        {
            Response.Redirect("DangKyBaoHanh.aspx");
        }
    }
}
