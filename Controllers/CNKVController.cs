using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class CNKVController : Controller
    {
        private readonly ILogger<CNKVController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CNKVController(ILogger<CNKVController> logger, IConfiguration configuration)
        {
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index(string cn)
        {
            List<CnKv> CnKvs = new List<CnKv>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                CnKvs = db.Query<CnKv>("sp_Xem_Khu_Vuc_Cua_Chi_Nhanh", new { MA_CN = "CN1" }, commandType: CommandType.StoredProcedure).ToList();
            }
            return View(CnKvs);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_chi_nhanh,ma_khu_vuc")] CnKv d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<CnKv>("sp_Them_Khu_Vuc_Cho_Chi_Nhanh", new { MA_CN = d.ma_chi_nhanh, MA_KV = d.ma_khu_vuc }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string cn, string kv)
        {
            CnKv? CnKv = new CnKv();
            if (cn == null && kv == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                CnKv = db.Query<CnKv>("sp_Xem_Khu_Vuc_Cua_Chi_Nhanh", new { MA_CN = cn, MA_KV = kv }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (CnKv == null)
            {
                return NotFound();
            }
            return View(CnKv);
        }

        // [HttpPost]
        // [ValidateAntiForgeryToken]
        // public IActionResult Edit(string id, [Bind("ma_dich_vu,ten_dich_vu,don_gia_theo_gio,don_gia_khuyen_mai")] CnKv? d)
        // {
        //     using (IDbConnection db = new SqlConnection(builder.ConnectionString))
        //         {
        //             d = db.Query<CnKv>("sp_Sua_Dich_Vu", new {MaDV=id, TenDV=d.ten_dich_vu, Dongiatheogio=d.don_gia_theo_gio, Don_Gia_Khuyen_mai=d.don_gia_khuyen_mai}, commandType:CommandType.StoredProcedure).FirstOrDefault();
        //         }
        //     return View(d);
        // }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string cn, string kv)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<CnKv>("sp_Xoa_Khu_Vuc_Cua_Chi_Nhanh", new { MA_CN = cn, MA_KV = kv }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
