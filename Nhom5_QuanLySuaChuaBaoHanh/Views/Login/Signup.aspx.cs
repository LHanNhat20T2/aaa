using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Windows.Forms;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views.Login
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnhuy_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void btndangky_Click(object sender, EventArgs e)
        {
            MessageBox.Show("Đăng ký tài khoản thành công!");
            Response.Redirect("Login.aspx");
        }
    }
}