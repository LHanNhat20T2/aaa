using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.QL
{
    public partial class CapNhatLoaiSuaChua : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[] {
            new DataColumn("MaLSC", typeof(int)),
            new DataColumn("DVSC", typeof(string)),
            new DataColumn("GiaTien", typeof(int)),
            new DataColumn("TenLSC", typeof(string))
        });
            dt.Rows.Add(1, "Sửa chữa tủ lạnh", 350000, "Xử lý sự cố không lạnh");
            dt.Rows.Add(2, "Sửa chữa Điều hòa", 350000, "Chênh lệch nhiệt độ");
            dt.Rows.Add(3, "Sửa chữa máy giặt", 350000, " Không vắt khô");
            dt.Rows.Add(4, "Sửa chữa máy giặt", 350000, "Không nạp nước");
            MyGridView.DataSource = dt;
            MyGridView.DataBind();
        }
    }
}