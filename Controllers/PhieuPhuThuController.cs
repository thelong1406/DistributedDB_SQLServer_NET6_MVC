using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class PhieuPhuThuController : Controller
    {
        private readonly ILogger<PhieuPhuThuController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public PhieuPhuThuController(ILogger<PhieuPhuThuController> logger, IConfiguration configuration)
        {
            builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            // builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<PhieuPhuThu> PhieuPhuThus = new List<PhieuPhuThu>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                PhieuPhuThus = db.Query<PhieuPhuThu>("sp_Xem_Phieu_Phu_Thu", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(PhieuPhuThus);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_nv,ma_chi_nhanh")] PhieuPhuThu d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<PhieuPhuThu>("sp_Them_Phieu_Phu_Thu", new { MA_NV = d.ma_nv, MA_CN = d.ma_chi_nhanh }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            PhieuPhuThu? PhieuPhuThu = new PhieuPhuThu();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                PhieuPhuThu = db.Query<PhieuPhuThu>("sp_Xem_Phieu_Phu_Thu", new { SO_PPT = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (PhieuPhuThu == null)
            {
                return NotFound();
            }
            return View(PhieuPhuThu);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<PhieuPhuThu>("sp_Xoa_Phieu_Phu_Thu", new { SO_PPT = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult CreateCTPT([Bind("so_phieu_thu, ma_dich_vu, so_luong, ma_nv, ma_chi_nhanh")] ChiTietPhuThu d)
        {
            try
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<ChiTietPhuThu>("sp_Them_Chi_Tiet_Phu_Thu_May_Tram", new { SO_PPT = d.so_phieu_thu, MA_DV = d.ma_dich_vu, SL=d.so_luong, MA_NV=d.ma_nv, MA_CN=d.ma_chi_nhanh }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            catch (Exception ex)
            {
                ViewBag.CreateFailed = ex;
                return View(d);
            }
        }

        public ActionResult DeletePPT(int SO_PPT, int MA_DV, string MA_NV, string MA_CN)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<ChiTietPhuThu>("sp_Xoa_Chi_Tiet_Phu_Thu_May_Tram", new { SO_PPT = SO_PPT, MA_DV = MA_DV, MA_NV = MA_NV, MA_CN = MA_CN }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Edit), new { id = SO_PPT });
        }
    }
}
