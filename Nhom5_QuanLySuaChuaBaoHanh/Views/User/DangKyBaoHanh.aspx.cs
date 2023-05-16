using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.User
{
    public partial class DangKyBaoHanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void RedirectToDanhSachBaoHanh(object sender, EventArgs e)
        {
            Response.Redirect("DanhSachBaoHanh.aspx");
        }
    }
}