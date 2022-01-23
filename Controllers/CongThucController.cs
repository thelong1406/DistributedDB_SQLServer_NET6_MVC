using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class CongThucController : Controller
    {
        private readonly ILogger<CongThucController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CongThucController(ILogger<CongThucController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index(string? id)
        {
            List<CongThuc> CongThucs = new List<CongThuc>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                // CongThucs = db.Query<CongThuc>("sp_Xem_Dich_Vu", commandType:CommandType.StoredProcedure).ToList();

                if (id != null)
                {
                    CongThucs = db.Query<CongThuc>($"SELECT * FROM cong_thuc WHERE ma_sp={id}").ToList();
                }
                else
                {
                    CongThucs = db.Query<CongThuc>("SELECT * FROM cong_thuc").ToList();
                }
            }
            return View(CongThucs);
        }
        public IActionResult CongThucSanPhamList(string ma_sp)
        {
            List<CongThuc> CongThucs = new List<CongThuc>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                CongThucs = db.Query<CongThuc>("sp_Xem_Cong_Thuc_Cua_San_Pham", new { MASP = ma_sp }, commandType: CommandType.StoredProcedure).ToList();
            }
            return View("CTSP_List", CongThucs);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_sp,ma_nl,luong")] CongThuc d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<CongThuc>("sp_Them_Cong_Thuc_Cho_San_Pham", new { MASP = d.ma_sp, MANL = d.ma_nl, LUONG = d.luong }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string ma_sp, string ma_nl)
        {
            CongThuc? CongThuc = new CongThuc();
            if (ma_sp == null || ma_nl == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                CongThuc = db.Query<CongThuc>($"SELECT * FROM cong_thuc WHERE ma_sp={ma_nl} AND ma_nl={ma_sp}").FirstOrDefault();
            }
            if (CongThuc == null)
            {
                return NotFound();
            }
            return View(CongThuc);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ma_sp,ma_nl,luong")] CongThuc? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<CongThuc>("sp_Sua_Cong_Thuc_Cho_San_Pham", new { MASP = d.ma_sp, MANL = d.ma_nl, LUONG = d.luong }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string ma_sp, string ma_nl)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<CongThuc>("sp_Xoa_Cong_Thuc_Cho_San_Pham", new { MASP = ma_sp, MANL = ma_nl }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
