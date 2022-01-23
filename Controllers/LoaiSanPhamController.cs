using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class LoaiSanPhamController : Controller
    {
        private readonly ILogger<LoaiSanPhamController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public LoaiSanPhamController(ILogger<LoaiSanPhamController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<LoaiSanPham> LoaiSanPhams = new List<LoaiSanPham>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                LoaiSanPhams = db.Query<LoaiSanPham>("sp_Xem_Cac_Loai_San_Pham", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(LoaiSanPhams);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ten_loai")] LoaiSanPham l)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<LoaiSanPham>("sp_Them_Loai_San_Pham", new { TenLoai = l.ten_loai }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(l);
        }

        public IActionResult Edit(string id)
        {
            LoaiSanPham? LoaiSanPham = new LoaiSanPham();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                LoaiSanPham = db.Query<LoaiSanPham>("sp_Xem_Cac_Loai_San_Pham", new { MaLoai = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (LoaiSanPham == null)
            {
                return NotFound();
            }
            return View(LoaiSanPham);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ma_loai,ten_loai")] LoaiSanPham? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<LoaiSanPham>("sp_Sua_Loai_San_Pham", new { Maloai = d.ma_loai, TenLoai = d.ten_loai }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<LoaiSanPham>("sp_Xoa_Loai_San_Pham", new { Maloai = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
