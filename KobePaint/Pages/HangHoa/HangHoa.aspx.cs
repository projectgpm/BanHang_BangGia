using DevExpress.Export;
using DevExpress.Web;
using DevExpress.XtraPrinting;
using KobePaint.App_Code;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KobePaint.Pages.HangHoa
{
    public partial class HangHoa : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!Context.User.Identity.IsAuthenticated)
            {
                Response.Redirect("~/Pages/TaiKhoan/DangNhap.aspx");
            }
            if (!IsPostBack)
            {
                int Permiss = Formats.PermissionUser();
                if (Permiss == 3)
                {
                    btnThemHangHoa.Enabled = false;
                  
                  
                    gridHangHoa.Columns["chucnang"].Visible = false;
                }
            }
        }

        protected void grid_CustomColumnDisplayText(object sender, DevExpress.Web.ASPxGridViewColumnDisplayTextEventArgs e)
        {
            Formats.InitDisplayIndexColumn(e);
        }

        protected void gridApGia_BeforePerformDataSelect(object sender, EventArgs e)
        {
            Session["IDHangHoa"] = (sender as ASPxGridView).GetMasterRowKeyValue();
        }

        protected void gridApGia_RowValidating(object sender, DevExpress.Web.Data.ASPxDataValidationEventArgs e)
        {
            //int IDDaiLy = Convert.ToInt32(e.NewValues["LoaiKhachHangID"]);
            //int IDHangHoa = Convert.ToInt32(Session["IDHangHoa"]);
            //var DaApGia = DBDataProvider.DB.hhApGias.Where(x => x.LoaiKhachHangID == IDDaiLy && x.HangHoaID == IDHangHoa).Any();
            //if (DaApGia)
            //{
            //    e.RowError = "Đại lý nãy đã được áp giá";
            //}
        }

        protected void btnXuatExcel_Click(object sender, EventArgs e)
        {
            exproter.WriteXlsxToResponse(new XlsxExportOptionsEx { ExportType = ExportType.WYSIWYG });
        }

        
       
    }
}