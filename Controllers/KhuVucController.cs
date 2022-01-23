using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class KhuVucController : Controller
    {
        private readonly ILogger<KhuVucController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public KhuVucController(ILogger<KhuVucController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<KhuVuc> KhuVucs = new List<KhuVuc>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                KhuVucs = db.Query<KhuVuc>("sp_Xem_Khu_Vuc", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(KhuVucs);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_khu_vuc,ten_khu_vuc,phi_kv")] KhuVuc d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<KhuVuc>("sp_Them_Khu_Vuc", new { MAKV = d.ma_khu_vuc, TENKV = d.ten_khu_vuc, PHI_KV = d.phi_kv }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            KhuVuc? KhuVuc = new KhuVuc();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                KhuVuc = db.Query<KhuVuc>("sp_Xem_Khu_Vuc", new { MAKV = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (KhuVuc == null)
            {
                return NotFound();
            }
            return View(KhuVuc);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_khu_vuc,phi_kv")] KhuVuc? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<KhuVuc>("sp_Sua_Khu_Vuc", new { MAKV = id, TENKV = d.ten_khu_vuc, PHI_KV = d.phi_kv }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<KhuVuc>("sp_Xoa_Khu_Vuc", new { MAKV = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
