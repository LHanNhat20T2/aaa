using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Nhom5_QuanLySuaChuaBaoHanh.Views
{
    public partial class ChinhSachBaoHanh : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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