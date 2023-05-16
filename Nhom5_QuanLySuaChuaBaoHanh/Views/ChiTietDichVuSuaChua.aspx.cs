using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views
{
    public partial class ChiTietDichVuSuaChua : System.Web.UI.Page
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
            dt.Rows.Add(3, "Sửa chữa máy giặt", 350000, " Không vắt khô");
            dt.Rows.Add(4, "Sửa chữa máy giặt", 350000, "Không nạp nước");
            MyGridView.DataSource = dt;
            MyGridView.DataBind();
        }

        protected void Page_PreInit(object sender, EventArgs e)
        {
            string masterPage = Request.QueryString["mp"];

            if (!string.IsNullOrEmpty(masterPage))
            {
                this.MasterPageFile = masterPage;
            }
        }
    }
}