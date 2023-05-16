using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.QL
{
    public partial class CapNhatDichVuSuaChua : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            DataTable dt = new DataTable();
            dt.Columns.AddRange(new DataColumn[] {
            new DataColumn("MaDVSC", typeof(int)),
            new DataColumn("TenDVSC", typeof(string))
        });
            dt.Rows.Add( 1, "Sửa chữa tủ lạnh");
            dt.Rows.Add( 2, "Sửa chữa Điều hòa");
            dt.Rows.Add( 3, "Sửa chữa lò vi sóng");
            dt.Rows.Add( 4, "Sửa chữa bếp điện từ");
            dt.Rows.Add( 5, "Sửa chữa máy giặc");
            MyGridView.DataSource = dt;
            MyGridView.DataBind();
        }
    }
}