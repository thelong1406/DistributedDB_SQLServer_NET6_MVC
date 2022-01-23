using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class LichLamViecParttimeDlcdController : Controller
    {
        private readonly ILogger<LichLamViecParttimeDlcdController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public LichLamViecParttimeDlcdController(ILogger<LichLamViecParttimeDlcdController> logger, IConfiguration configuration)
        {
            builder.ConnectionString = Globals.Connection_String;
            // builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<LichLamViecParttimeDlcd> LichLamViecParttimeDlcds = new List<LichLamViecParttimeDlcd>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                LichLamViecParttimeDlcds = db.Query<LichLamViecParttimeDlcd>("sp_Xem_cac_ca_lam_viec", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(LichLamViecParttimeDlcds);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ngay_trong_tuan,ca_trong_ngay,thuong_theo_ca,ghi_chu,gio_nhan_ca,gio_tan_ca")] LichLamViecParttimeDlcd l)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<LichLamViecParttimeDlcd>("sp_Them_ca_lam_viec", new { Ngay_Trong_Tuan = l.ngay_trong_tuan, Ca = l.ca_trong_ngay, Thuong_theo_ca = l.thuong_theo_ca, Ghi_chu = l.ghi_chu, Nhan_Ca = l.gio_nhan_ca, Tan_Ca = l.gio_tan_ca }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(l);
        }

        public IActionResult Edit(string id)
        {
            LichLamViecParttimeDlcd? LichLamViecParttimeDlcd = new LichLamViecParttimeDlcd();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                LichLamViecParttimeDlcd = db.Query<LichLamViecParttimeDlcd>("sp_Xem_cac_ca_lam_viec", new { id = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (LichLamViecParttimeDlcd == null)
            {
                return NotFound();
            }
            return View(LichLamViecParttimeDlcd);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ngay_trong_tuan,ca_trong_ngay,thuong_theo_ca,ghi_chu,gio_nhan_ca,gio_tan_ca")] LichLamViecParttimeDlcd? l)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                l = db.Query<LichLamViecParttimeDlcd>("sp_Sua_Loai_San_Pham", new { id = id, Ngay_Trong_Tuan = l.ngay_trong_tuan, Ca = l.ca_trong_ngay, Thuong_theo_ca = l.thuong_theo_ca, Ghi_chu = l.ghi_chu, Nhan_Ca = l.gio_nhan_ca, Tan_Ca = l.gio_tan_ca }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(l);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string ngay_trong_tuan, string ca)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<LichLamViecParttimeDlcd>("sp_Xoa_ca_lam_viec", new { Ngay_Trong_Tuan = ngay_trong_tuan, Ca = ca }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
