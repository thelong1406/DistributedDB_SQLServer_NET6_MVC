using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class HoaDonController : Controller
    {
        private readonly ILogger<HoaDonController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public HoaDonController(ILogger<HoaDonController> logger, IConfiguration configuration)
        {
            builder.ConnectionString = Globals.Connection_String;
            // builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<HoaDon> HoaDons = new List<HoaDon>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                HoaDons = db.Query<HoaDon>("sp_Xem_Hoa_Don_May_Tram", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(HoaDons);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_khu_vuc, ma_kh, hinh_thuc_mua")] HoaDon d)
        {
            try
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<HoaDon>("sp_Them_Hoa_Don_May_Tram", new { MA_NV = Globals._Logined_User_Info.ma_nv, MA_CN = Globals._Logined_User_Info.ma_chi_nhanh, MA_KV = d.ma_khu_vuc, MA_KH = d.ma_kh, HINH_THUC_MUA = d.hinh_thuc_mua }, commandType: CommandType.StoredProcedure);
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
            HoaDon? HoaDon = new HoaDon();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                HoaDon = db.Query<HoaDon>("sp_Xem_Hoa_Don_May_Tram", new { SO_HD = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (HoaDon == null)
            {
                return NotFound();
            }
            return View(HoaDon);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<HoaDon>("sp_Xoa_Hoa_Don_May_Tram", new { SO_HD = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult CreateCTHD([Bind("so_hd, ma_sp, so_luong")] ChiTietHoaDon d)
        {
            try
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<ChiTietHoaDon>("sp_Them_Chi_Tiet_Hoa_Don_May_Tram", new { SO_HD = d.so_hd, MA_SP = d.ma_sp, SO_LUONG = d.so_luong }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Edit), new { id = d.so_hd });
            }
            catch (Exception ex)
            {
                ViewBag.CreateFailed = ex;
                return View(d);
            }
        }

        public ActionResult DeleteHD(int SO_HD, int MA_SP)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<ChiTietPhuThu>("sp_Xoa_CTHD_May_Tram", new { SO_HD = SO_HD, MA_SP = MA_SP }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Edit), new { id = SO_HD });
        }
    }
}
