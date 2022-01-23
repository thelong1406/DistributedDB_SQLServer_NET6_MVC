using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class NguyenLieuKhoController : Controller
    {
        private readonly ILogger<NguyenLieuKhoController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public NguyenLieuKhoController(ILogger<NguyenLieuKhoController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<NguyenLieuKho> NguyenLieuKhos = new List<NguyenLieuKho>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NguyenLieuKhos = db.Query<NguyenLieuKho>("sp_Xem_Nguyen_Lieu_Kho_May_Tram", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(NguyenLieuKhos);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_nl,ma_chi_nhanh,gia_von")] NguyenLieuKho d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<NguyenLieuKho>("sp_Them_Nguyen_Lieu_Kho_May_Tram", new { MA_NV = d.ma_nl, MA_CN = d.ma_chi_nhanh, GIA_VON = d.gia_von }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string nlk, string cn)
        {
            NguyenLieuKho? NguyenLieuKho = new NguyenLieuKho();
            if (nlk == null && cn == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NguyenLieuKho = db.Query<NguyenLieuKho>("sp_Xem_Nguyen_Lieu_Kho_May_Tram", new { MA_NLK = nlk, MA_CN = cn }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (NguyenLieuKho == null)
            {
                return NotFound();
            }
            return View(NguyenLieuKho);
        }

        // [HttpPost]
        // [ValidateAntiForgeryToken]
        // public IActionResult Edit(string id, [Bind("ma_dich_vu,ten_dich_vu,don_gia_theo_gio,don_gia_khuyen_mai")] NguyenLieuKho? d)
        // {
        //     using (IDbConnection db = new SqlConnection(builder.ConnectionString))
        //     {
        //         d = db.Query<NguyenLieuKho>("sp_Sua_Dich_Vu", new { MaDV = id, TenDV = d.ten_dich_vu, Dongiatheogio = d.don_gia_theo_gio, Don_Gia_Khuyen_mai = d.don_gia_khuyen_mai }, commandType: CommandType.StoredProcedure).FirstOrDefault();
        //     }
        //     return View(d);
        // }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<NguyenLieuKho>("sp_Xoa_Nguyen_Lieu_Kho_May_Tram", new { MA_NLK = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
