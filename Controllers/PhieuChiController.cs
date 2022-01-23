using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class PhieuChiController : Controller
    {
        private readonly ILogger<PhieuChiController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public PhieuChiController(ILogger<PhieuChiController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<PhieuChi> PhieuChis = new List<PhieuChi>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                PhieuChis = db.Query<PhieuChi>("sp_Xem_Phieu_Chi_May_Tram", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(PhieuChis);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_loai_chi,tong_tien_chi")] PhieuChi d)
        {
            try
            {
                string ma_nv = Globals._Logined_User_Info.ma_nv;
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<PhieuChi>("sp_Them_Phieu_Chi_May_Tram", new { MA_LC = d.ma_loai_chi, TONG_CHI = d.tong_tien_chi, MA_NV = ma_nv }, commandType: CommandType.StoredProcedure);
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
            PhieuChi? PhieuChi = new PhieuChi();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                PhieuChi = db.Query<PhieuChi>("sp_Xem_Phieu_Chi_May_Tram", new { SO_PC = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (PhieuChi == null)
            {
                return NotFound();
            }
            return View(PhieuChi);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("tong_tien_chi")] PhieuChi? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<PhieuChi>("sp_Sua_Phieu_Chi_May_Tram", new { SO_PC = id, TONG_CHI = d.tong_tien_chi }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<PhieuChi>("sp_Xoa_Phieu_Chi_May_Tram", new { SO_PC = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
