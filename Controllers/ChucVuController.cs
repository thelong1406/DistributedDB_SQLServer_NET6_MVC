using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class ChucVuController : Controller
    {
        private readonly ILogger<ChucVuController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public ChucVuController(ILogger<ChucVuController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String; ;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<ChucVu> ChucVus = new List<ChucVu>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChucVus = db.Query<ChucVu>("sp_Xem_Chuc_Vu", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(ChucVus);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_chuc_vu,ten_chuc_vu,cach_tinh_luong,luong")] ChucVu d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<ChucVu>("sp_Them_Chuc_Vu", new { MACV = d.ma_chuc_vu, TENCV = d.ten_chuc_vu, CTL = d.cach_tinh_luong, Luong = d.luong }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            ChucVu? ChucVu = new ChucVu();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChucVu = db.Query<ChucVu>("sp_Xem_Chuc_Vu", new { MACV = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (ChucVu == null)
            {
                return NotFound();
            }
            return View(ChucVu);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_chuc_vu,cach_tinh_luong,luong")] ChucVu? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<ChucVu>("sp_Sua_Chuc_Vu", new { MACV = id, TENCV = d.ten_chuc_vu, CTL = d.cach_tinh_luong, Luong = d.luong }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<ChucVu>("sp_Xoa_Chuc_Vu", new { MACV = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
