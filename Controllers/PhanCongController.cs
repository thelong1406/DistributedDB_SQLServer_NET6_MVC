using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class PhanCongController : Controller
    {
        private readonly ILogger<PhanCongController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public PhanCongController(ILogger<PhanCongController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<PhanCong> PhanCongs = new List<PhanCong>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                PhanCongs = db.Query<PhanCong>("sp_Xem_Phan_Cong", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(PhanCongs);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_nv,id")] PhanCong d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<PhanCong>("sp_Phan_cong_NV_Parttime_May_Tram", new { MA_NV = d.ma_nv, Ma_Ca = d.id }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string nv, int id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<PhanCong>("sp_Xoa_Phan_Cong_May_Tram", new { MA_NV = nv, ID = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
