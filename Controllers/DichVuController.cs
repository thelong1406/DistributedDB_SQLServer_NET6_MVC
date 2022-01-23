using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class DichVuController : Controller
    {
        private readonly ILogger<DichVuController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public DichVuController(ILogger<DichVuController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<DichVu> DichVus = new List<DichVu>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                DichVus = db.Query<DichVu>("sp_Xem_Dich_Vu", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(DichVus);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ten_dich_vu,don_gia_theo_gio,don_gia_khuyen_mai")] DichVu d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<DichVu>("sp_Them_Dich_Vu", new { TenDV = d.ten_dich_vu, Dongiatheogio = d.don_gia_theo_gio, Don_Gia_Khuyen_mai = d.don_gia_khuyen_mai }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            DichVu? DichVu = new DichVu();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                DichVu = db.Query<DichVu>("sp_Xem_Dich_Vu", new { MaDV = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (DichVu == null)
            {
                return NotFound();
            }
            return View(DichVu);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ma_dich_vu,ten_dich_vu,don_gia_theo_gio,don_gia_khuyen_mai")] DichVu? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<DichVu>("sp_Sua_Dich_Vu", new { MaDV = id, TenDV = d.ten_dich_vu, Dongiatheogio = d.don_gia_theo_gio, Don_Gia_Khuyen_mai = d.don_gia_khuyen_mai }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<DichVu>("sp_Xoa_Dich_Vu", new { MaDV = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
