using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class LoaiChiController : Controller
    {
        private readonly ILogger<LoaiChiController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public LoaiChiController(ILogger<LoaiChiController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<LoaiHinhChi> LoaiHinhChis = new List<LoaiHinhChi>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                LoaiHinhChis = db.Query<LoaiHinhChi>("sp_Xem_Loai_Hinh_Chi", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(LoaiHinhChis);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ten_loai_chi")] LoaiHinhChi d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<LoaiHinhChi>("sp_Them_Loai_Hinh_Chi", new { TenLHC = d.ten_loai_chi }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            LoaiHinhChi? LoaiHinhChi = new LoaiHinhChi();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                LoaiHinhChi = db.Query<LoaiHinhChi>("sp_Xem_Loai_Hinh_Chi", new { MALC = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (LoaiHinhChi == null)
            {
                return NotFound();
            }
            return View(LoaiHinhChi);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_loai_chi")] LoaiHinhChi? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<LoaiHinhChi>("sp_Sua_Loai_Hinh_Chi", new { MALC = d.ma_loai_chi, TenLHC = d.ten_loai_chi }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<LoaiHinhChi>("sp_Xoa_Hoan_Toan_Loai_Hinh_Chi", new { MALC = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
