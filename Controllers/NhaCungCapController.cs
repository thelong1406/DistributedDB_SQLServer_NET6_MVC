using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class NhaCungCapController : Controller
    {
        private readonly ILogger<NhaCungCapController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public NhaCungCapController(ILogger<NhaCungCapController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<NhaCungCap> NhaCungCaps = new List<NhaCungCap>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NhaCungCaps = db.Query<NhaCungCap>("sp_Xem_Nha_Cung_Cap_May_Tram", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(NhaCungCaps);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ten_ncc,sdt_ncc,dia_chi_ncc,ma_chi_nhanh")] NhaCungCap d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<NhaCungCap>("sp_Them_Nha_Cung_Cap_May_Tram", new { TEN_NCC = d.ten_ncc, SDT_NCC = d.sdt_ncc, DIACHI_NCC = d.dia_chi_ncc, MA_CN = d.ma_chi_nhanh }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            NhaCungCap? NhaCungCap = new NhaCungCap();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                NhaCungCap = db.Query<NhaCungCap>("sp_Xem_Nha_Cung_Cap_May_Tram", new { MANCC = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (NhaCungCap == null)
            {
                return NotFound();
            }
            return View(NhaCungCap);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_ncc,sdt_ncc,dia_chi_ncc,ma_chi_nhanh")] NhaCungCap? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<NhaCungCap>("sp_Sua_Nha_Cung_Cap_May_Tram", new { MA_NCC = id, TEN_NCC = d.ten_ncc, SDT_NCC = d.sdt_ncc, DIACHI_NCC = d.dia_chi_ncc, MA_CN = d.ma_chi_nhanh }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<NhaCungCap>("sp_Xoa_Nha_Cung_Cap_May_Tram", new { MA_NCC = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
