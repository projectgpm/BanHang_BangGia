using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KobePaint.Pages.KH_NCC
{
    public partial class ThemKH : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Pages/TaiKhoan/DangNhap.aspx");
            }
            if (!IsPostBack)
            {
                txtMaKH.Text = "KH" + (DateTime.Now).ToString("MM") + BitConverter.ToInt32(Guid.NewGuid().ToByteArray(), 10).ToString().Substring(1, 4);
            }  
        }

        protected void btnLuu_Click(object sender, EventArgs e)
        {
            dsKhachHang.Insert();
            if (ccbLoaiKH.Value.ToString() == "2")
                Response.Redirect("~/Pages/KhachHang/DanhSachNCC.aspx");
            Response.Redirect("~/Pages/KhachHang/DanhSachKH.aspx");
        }
        
    }
}