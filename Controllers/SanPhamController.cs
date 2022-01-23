using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class SanPhamController : Controller
    {
        private readonly ILogger<SanPhamController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public SanPhamController(ILogger<SanPhamController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<SanPham> SanPhams = new List<SanPham>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                SanPhams = db.Query<SanPham>("sp_Xem_San_Pham", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(SanPhams);
        }
        // [HttpPost]
        // public IActionResult Index()
        // {
        //     List<SanPham> SanPhams = new List<SanPham>();
        //     using (IDbConnection db = new SqlConnection(builder.ConnectionString))
        //     {
        //         SanPhams = db.Query<SanPham>("sp_Xem_San_Pham", commandType: CommandType.StoredProcedure).ToList();
        //     }
        //     return View(SanPhams);
        // }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ten_sp,don_gia_theo_sp,ghi_chu_cong_thuc,ma_loai,hinh_anh,don_gia_khuyen_mai")] SanPham d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<SanPham>("sp_Them_San_Pham", new { TenSP = d.ten_sp, DG = d.don_gia_theo_sp, GHICHU = d.ghi_chu_cong_thuc, MALOAI = d.ma_loai, HINHANH = d.hinh_anh, KM = d.don_gia_khuyen_mai }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            SanPham? SanPham = new SanPham();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                SanPham = db.Query<SanPham>("sp_Xem_San_Pham", new { MASP = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (SanPham == null)
            {
                return NotFound();
            }
            return View(SanPham);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_sp,don_gia_theo_sp,ghi_chu_cong_thuc,ma_loai,hinh_anh,don_gia_khuyen_mai")] SanPham? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<SanPham>("sp_Sua_San_Pham", new { MASP = id, TenSP = d.ten_sp, DG = d.don_gia_theo_sp, GHICHU = d.ghi_chu_cong_thuc, MALOAI = d.ma_loai, HINHANH = d.hinh_anh, KM = d.don_gia_khuyen_mai }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<SanPham>("sp_Xoa_San_Pham", new { MASP = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
