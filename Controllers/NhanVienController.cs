using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class NhanVienController : Controller
    {
        private readonly ILogger<NhanVienController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public NhanVienController(ILogger<NhanVienController> logger, IConfiguration configuration)
        {
            builder.ConnectionString = Globals.Connection_String;
            // builder.ConnectionString = Globals.Connection_String; 
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<NhanVien> NhanViens = new List<NhanVien>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NhanViens = db.Query<NhanVien>("sp_Xem_Nhan_Vien_May_Tram", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(NhanViens);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ten_nv,ma_chi_nhanh,ma_chuc_vu,cmnd,gioi_tinh,ngay_sinh,dia_chi_nv,sdt_nv,thu_viec,he_so_luong,anh_dai_dien")] NhanVien d)
        {
            try
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<NhanVien>("sp_Them_Nhan_Vien_May_Tram", new { MA_CN = d.ma_chi_nhanh, MA_CV = d.ma_chuc_vu, TEN_NV = d.ten_nv, CMND = d.cmnd, GIOI_TINH = d.gioi_tinh, NGAY_SINH = d.ngay_sinh, DIACHI_NV = d.dia_chi_nv, SDT_NV = d.sdt_nv, IS_THU_VIEC = d.thu_viec, HE_SO_LUONG = d.he_so_luong, AVATAR = d.anh_dai_dien }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                ViewBag.CreateFailed = ex;
                return View(d);
            }
        }

        public IActionResult Edit(string id)
        {
            NhanVien? NhanVien = new NhanVien();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NhanVien = db.Query<NhanVien>("sp_Xem_Nhan_Vien_May_Tram", new { MA_NV = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (NhanVien == null)
            {
                return NotFound();
            }
            return View(NhanVien);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_nv,cmnd,gioi_tinh,ngay_sinh,dia_chi_nv,sdt_nv,thu_viec,he_so_luong,anh_dai_dien")] NhanVien? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<NhanVien>("sp_Sua_Nhan_Vien_May_Tram", new { MA_NV = id, TEN_NV = d.ten_nv, CMND = d.cmnd, GIOI_TINH = d.gioi_tinh, NGAY_SINH = d.ngay_sinh, DIACHI_NV = d.dia_chi_nv, SDT_NV = d.sdt_nv, IS_THU_VIEC = d.thu_viec, HE_SO_LUONG = d.he_so_luong, AVATAR = d.anh_dai_dien }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<NhanVien>("sp_Xoa_Nhan_Vien_May_Tram", new { MA_NV = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
