using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.QL
{
    public partial class CapNhatChinhSachBaoHanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dt = new DataTable();
                dt.Columns.AddRange(new DataColumn[] {
            new DataColumn("MaCS", typeof(int)),
            new DataColumn("LoaiSP", typeof(string)),
            new DataColumn("XuatXu", typeof(string)),
            new DataColumn("ThoiHanBH", typeof(int)),
            new DataColumn("ThoiHanDB", typeof(string))
        });
                dt.Rows.Add(1, "Điều hòa nhỏ", "Việt Nam", 24, "Bo mạch lạnh được bảo hành 36 tháng kể từ ngày sản xuất");
                dt.Rows.Add(2, "Tủ lạnh", "Việt Nam", 24, "Bo mạch lạnh được bảo hành 36 tháng kể từ ngày sản xuất");
                dt.Rows.Add(3, "Tủ lạnh", "Việt Nam", 24, "Bo mạch lạnh được bảo hành 36 tháng kể từ ngày sản xuất");
                dt.Rows.Add(4, "Tủ lạnh", "Việt Nam", 24, "Bo mạch lạnh được bảo hành 36 tháng kể từ ngày sản xuất");
                dt.Rows.Add(5, "Điều hòa", "Việt Nam", 24, "Bo mạch lạnh được bảo hành 36 tháng kể từ ngày sản xuất");
                MyGridView.DataSource = dt;
                MyGridView.DataBind();
            }
        }
    }
}