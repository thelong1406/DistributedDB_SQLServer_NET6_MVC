using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class NguyenLieuController : Controller
    {
        private readonly ILogger<NguyenLieuController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public NguyenLieuController(ILogger<NguyenLieuController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<NguyenLieu> NguyenLieus = new List<NguyenLieu>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NguyenLieus = db.Query<NguyenLieu>("sp_Xem_Nguyen_Lieu", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(NguyenLieus);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ten_nl,don_vi_do")] NguyenLieu d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<NguyenLieu>("sp_Them_Nguyen_Lieu", new { Ten_nl = d.ten_nl, Don_vi_do = d.don_vi_do }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            NguyenLieu? NguyenLieu = new NguyenLieu();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NguyenLieu = db.Query<NguyenLieu>("sp_Xem_Nguyen_Lieu", new { Ma_NL = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (NguyenLieu == null)
            {
                return NotFound();
            }
            return View(NguyenLieu);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_nl,don_vi_do")] NguyenLieu? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<NguyenLieu>("sp_Sua_Nguyen_Lieu", new { Ma_ml = id, Ten_nl = d.ten_nl, Don_vi_do = d.don_vi_do }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<NguyenLieu>("sp_Xoa_Nguyen_Lieu", new { Ma_nl = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
