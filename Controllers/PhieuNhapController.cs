using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class PhieuNhapController : Controller
    {
        private readonly ILogger<PhieuNhapController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public PhieuNhapController(ILogger<PhieuNhapController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<PhieuNhap> PhieuNhaps = new List<PhieuNhap>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                PhieuNhaps = db.Query<PhieuNhap>("sp_Xem_Phieu_Nhap_May_Tram", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(PhieuNhaps);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_ncc,ma_nv,ma_chi_nhanh")] PhieuNhap d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<PhieuNhap>("sp_Them_Phieu_Nhap_May_Tram", new { MA_NCC = d.ma_ncc, MA_NV = d.ma_nv, MA_CN = d.ma_chi_nhanh }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            PhieuNhap? PhieuNhap = new PhieuNhap();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                PhieuNhap = db.Query<PhieuNhap>("sp_Xem_Phieu_Nhap_May_Tram", new { SO_PN = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (PhieuNhap == null)
            {
                return NotFound();
            }
            return View(PhieuNhap);
        }



        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<PhieuNhap>("sp_Xoa_Phieu_Nhap_May_Tram", new { SO_PN = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult CreateCTPN([Bind("so_phieu_nhap, ma_nl_kho, ma_ncc, ma_nv, so_luong, don_gia_nl")] ChiTietPhieuNhap d)
        {
            try
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<ChiTietPhieuNhap>("sp_Them_Chi_Tiet_Phieu_Nhap_May_Tram", new { SO_PN = d.so_phieu_nhap, MA_NLK = d.ma_nl_kho, MA_NCC = d.ma_ncc, MA_NV = d.ma_nv, SL = d.so_luong, DON_GIA = d.don_gia_nl }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Edit), new { id = d.so_phieu_nhap });
            }
            catch (Exception ex)
            {
                ViewBag.CreateFailed = ex;
                return View(d);
            }
        }
        public ActionResult DeletePN(int SO_PN, int MA_NLK)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<ChiTietPhuThu>("sp_Xoa_Chi_Tiet_Phieu_Nhap_May_Tram", new { SO_PN = SO_PN, MA_NLK = MA_NLK }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Edit), new { id = SO_PN });
        }
    }
}
