using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.User
{
    public partial class Users : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            // Chuyển đến trang chủ với Master page của 
        }

        protected void Timer1_Tick(object sender, EventArgs e)
        {

        }

        protected void LinkButtonTrangChu_Click(object sender, EventArgs e)
        {
            // Chuyển đến trang chủ với Master page của 
            Response.Redirect("/Views/TrangChu.aspx?mp=../Views/User/Users.master");
        }

    }
}