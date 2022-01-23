using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class KhuyenMaiController : Controller
    {
        private readonly ILogger<KhuyenMaiController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public KhuyenMaiController(ILogger<KhuyenMaiController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<KhuyenMai> KhuyenMais = new List<KhuyenMai>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                KhuyenMais = db.Query<KhuyenMai>("sp_Xem_Cac_Khuyen_Mai", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(KhuyenMais);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("dieu_kien_tich_luy,muc_khuyen_mai")] KhuyenMai d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<KhuyenMai>("sp_Them_Khuyen_Mai", new { Dieu_Kien = d.dieu_kien_tich_luy, Muc_KM = d.muc_khuyen_mai }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            KhuyenMai? KhuyenMai = new KhuyenMai();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                KhuyenMai = db.Query<KhuyenMai>("sp_Xem_Cac_Khuyen_Mai", new { MAKM = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (KhuyenMai == null)
            {
                return NotFound();
            }
            return View(KhuyenMai);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ma_khuyen_mai,dieu_kien_tich_luy,muc_khuyen_mai")] KhuyenMai? k)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                k = db.Query<KhuyenMai>("sp_Sua_Khuyen_Mai", new { MaKM = id, Dieu_Kien = k.dieu_kien_tich_luy, Muc_KM = k.muc_khuyen_mai }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(k);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<KhuyenMai>("sp_Xoa_Khuyen_Mai", new { MaKM = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
