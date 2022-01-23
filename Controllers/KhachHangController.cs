using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class KhachHangController : Controller
    {
        private readonly ILogger<KhachHangController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public KhachHangController(ILogger<KhachHangController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            List<KhachHang> KhachHangs = new List<KhachHang>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                KhachHangs = db.Query<KhachHang>("sp_Xem_Khach_Hang_May_Tram", commandType: CommandType.StoredProcedure).ToList();
            }
            return View(KhachHangs);
        }
        public IActionResult Create()
        {
            return View();
        }
        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Create([Bind("ma_chi_nhanh,ten_kh,sdt,dia_chi,gioi_tinh,ngay_sinh")] KhachHang d)
        {
            if (ModelState.IsValid)
            {
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    db.Query<KhachHang>("sp_Them_Khach_Hang_May_Tram", new { MACN = d.ma_chi_nhanh, TENKH = d.ten_kh, SDT = d.sdt, GIOITINH = d.gioi_tinh, NGAYSINH = d.ngay_sinh, DIACHI = d.dia_chi }, commandType: CommandType.StoredProcedure);
                }
                return RedirectToAction(nameof(Index));
            }
            return View(d);
        }

        public IActionResult Edit(string id)
        {
            KhachHang? KhachHang = new KhachHang();
            if (id == null)
            {
                return NotFound();
            }
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                KhachHang = db.Query<KhachHang>("sp_Xem_Khach_Hang_May_Tram", new { MAKH = id }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            if (KhachHang == null)
            {
                return NotFound();
            }
            return View(KhachHang);
        }

        [HttpPost]
        [ValidateAntiForgeryToken]
        public IActionResult Edit(string id, [Bind("ten_kh,sdt,tich_luy,ngay_tham_gia,dia_chi,gioi_tinh,ngay_sinh")] KhachHang? d)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                d = db.Query<KhachHang>("sp_Sua_Khach_Hang_May_Tram", new { MAKH = id, TENKH = d.ten_kh, SDT = d.sdt, GIOITINH = d.gioi_tinh, NGAYSINH = d.ngay_sinh, DIACHI = d.dia_chi }, commandType: CommandType.StoredProcedure).FirstOrDefault();
            }
            return View(d);
        }

        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public IActionResult Delete(string id)
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                db.Query<KhachHang>("sp_Xoa_Khach_Hang_May_Tram", new { MAKH = id }, commandType: CommandType.StoredProcedure);
            }
            return RedirectToAction(nameof(Index));
        }
    }
}
