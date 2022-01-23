using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class ChiNhanhController : Controller
    {
        private readonly ILogger<ChiNhanhController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public ChiNhanhController(ILogger<ChiNhanhController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<ChiNhanh> ChiNhanhs = new List<ChiNhanh>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChiNhanhs = db.Query<ChiNhanh>("sp_Xem_Chi_Nhanh", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(ChiNhanhs);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_chi_nhanh,ten_chi_nhanh,dia_chi,sdt_cn")] ChiNhanh c)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<ChiNhanh>("sp_Them_Chi_Nhanh", new { MaCN = c.ma_chi_nhanh, TenCN = c.ten_chi_nhanh, Diachi = c.dia_chi, SDT_CN = c.sdt_cn }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(c);
        }

        public IActionResult Edit(string id)
        {
            ChiNhanh? ChiNhanh = new ChiNhanh();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChiNhanh = db.Query<ChiNhanh>("sp_Xem_Chi_Nhanh", new { MACN = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (ChiNhanh == null)
            {
                return NotFound();
            }
            return View(ChiNhanh);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ma_chi_nhanh,ten_chi_nhanh,dia_chi,sdt_cn")] ChiNhanh? c)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                c = db.Query<ChiNhanh>("sp_Sua_Chi_Nhanh", new { MaCN = c.ma_chi_nhanh, TenCN = c.ten_chi_nhanh, Diachi = c.dia_chi, SDT_CN = c.sdt_cn }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(c);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<ChiNhanh>("sp_Xoa_Chi_Nhanh", new { MaCN = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
