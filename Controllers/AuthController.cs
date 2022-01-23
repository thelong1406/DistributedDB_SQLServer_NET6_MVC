using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class AuthController : Controller
    {
        private readonly IConfiguration Configuration;
        private readonly ILogger<AuthController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public AuthController(ILogger<AuthController> logger, IConfiguration configuration)
        {
            Configuration = configuration;
            builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            _logger = logger;
        }
        public IActionResult Login()
        {
            List<ViewChiNhanh> ChiNhanhs = new List<ViewChiNhanh>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChiNhanhs = db.Query<ViewChiNhanh>("SELECT * FROM v_Get_All_Server", commandType: CommandType.Text).ToList();
            }
            return View(ChiNhanhs);
        }
        [HttpPost]
        public IActionResult Login(string server_name, string username, string password)
        {
            string connection_string = "Data Source=" + server_name + ";Initial Catalog=CSDLPT_BTL; " + "User Id=" + username + ";Password=" + password + ";";
            bool login_success = Globals.Check_Login(connection_string);
            if (login_success)
            {
                builder.ConnectionString = Globals.Connection_String = connection_string;
                Globals.is_Customer = false;
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    Globals._Logined_User_Info = db.Query<Logined_User_Info>("sp_Lay_Thong_Tin_NV_Tu_Login", new { LoginName = username }, commandType: CommandType.StoredProcedure).FirstOrDefault();
                    Globals.danhMucs = db.Query<DanhMuc>("sp_Lay_DS_Danh_Muc_Quan_Ly_Theo_Login_Name", new { LOGIN_NAME = username }, commandType: CommandType.StoredProcedure).ToList();
                }
                return RedirectToAction("Index", "Home");
            }
            else
            {
                List<ViewChiNhanh> ChiNhanhs = new List<ViewChiNhanh>();
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    ChiNhanhs = db.Query<ViewChiNhanh>("SELECT * FROM v_Get_All_Server", commandType: CommandType.Text).ToList();
                }
                ViewBag.LoginFailed = "Thông tin tài khoản không tồn tại!";
                return View(ChiNhanhs);
            }
        }
        [HttpPost]
        public RedirectResult LogOut()
        {
            builder.ConnectionString = Configuration.GetConnectionString("DefaultConnection");
            Globals.Connection_String = "";
            Globals._Logined_User_Info = null;
            return Redirect("/Auth/Login");
        }

        public IActionResult Register()
        {
            List<ChiNhanh> ChiNhanhs = new List<ChiNhanh>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChiNhanhs = db.Query<ChiNhanh>("sp_Xem_Chi_Nhanh", commandType: CommandType.StoredProcedure).ToList();
            }
            return View();
        }
        public IActionResult Personal()
        {
            // NhanVien NhanViens = new NhanVien();
            // using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            // {
            //     NhanViens = db.Query<NhanVien>("sp_Lay_Thong_Tin_NV_Tu_Login", new { LoginName = "CNTIT1" }, commandType: CommandType.StoredProcedure).First();
            // }
            return View(Globals._Logined_User_Info);
        }

        public IActionResult Choose_Role()
        {
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                Globals.chiNhanhs = db.Query<ChiNhanh>("sp_Xem_Chi_Nhanh", commandType: CommandType.StoredProcedure).ToList();
            }
            return View();
        }
        [HttpPost]
        public IActionResult Choose_Role(string role)
        {
            if (role == "staff")
                return RedirectToAction("Login", "Auth");
            else if (role == "customer")
                return RedirectToAction("Customer_Login", "Auth");
            else
            {
                ViewBag.YO = "Why are you do this?";
                return View();
            }
        }
        [HttpGet]
        public IActionResult Customer_Login()
        {
            return View();
        }
        [HttpPost]
        public IActionResult Customer_Login(string username, string password)
        {
            string sdt = username.Substring(3);
            string data_source = "";
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                data_source = db.Query<string>("sp_LOGIN_Lay_DataSource_Chi_Nhanh_Cua_Khach_Hang_May_Tram", new { SDT = sdt }, commandType: CommandType.StoredProcedure).First();
            }
            string connection_string = "Data Source=" + data_source + ";Initial Catalog=CSDLPT_BTL; " + "User Id=" + username + ";Password=" + password + ";";
            bool login_success = Globals.Check_Login(connection_string);
            if (login_success)
            {
                builder.ConnectionString = Globals.Connection_String = connection_string;
                Globals.danhMucs = new List<DanhMuc>();
                Globals.is_Customer = true;
                using (IDbConnection db = new SqlConnection(builder.ConnectionString))
                {
                    Globals._KhachHang_Info = db.Query<Logined_KhachHang_Info>("sp_Lay_Thong_Tin_KH_Tu_Login", new { LoginName = username }, commandType: CommandType.StoredProcedure).First();
                }
                return RedirectToAction("Home_Customer", "Home");
            }
            else
            {
                ViewBag.LoginFailed = "Thông tin tài khoản không tồn tại!";
                return View();
            }
        }
        // public IActionResult Create()
        // {
        //     return View();
        // }
        // [HttpPost]
        // [ValidateAntiForgeryToken]
        // public IActionResult Create([Bind("ma_chi_nhanh,ten_chi_nhanh,dia_chi,sdt_cn")] ChiNhanh c)
        // {
        //     if (ModelState.IsValid)
        //     {               
        //         using (IDbConnection db = new SqlConnection(builder.ConnectionString))
        //         {
        //             db.Query<ChiNhanh>("sp_Them_Chi_Nhanh", new {MaCN=c.ma_chi_nhanh, TenCN=c.ten_chi_nhanh, Diachi=c.dia_chi, SDT_CN=c.sdt_cn}, commandType:CommandType.StoredProcedure);
        //         }
        //         return RedirectToAction(nameof(Index));
        //     }
        //     return View(c);
        // }

        // public IActionResult Edit(string id)
        // {
        //     ChiNhanh? ChiNhanh = new ChiNhanh();
        //     if (id == null)
        //     {
        //         return NotFound();
        //     }
        //     using (IDbConnection db = new SqlConnection(builder.ConnectionString))
        //         {
        //             ChiNhanh = db.Query<ChiNhanh>("sp_Xem_Chi_Nhanh", new {MACN=id}, commandType:CommandType.StoredProcedure).FirstOrDefault();
        //         }
        //     if (ChiNhanh == null)
        //     {
        //         return NotFound();
        //     }
        //     return View(ChiNhanh);
        // }

        // [HttpPost]
        // [ValidateAntiForgeryToken]
        // public IActionResult Edit(string id, [Bind("ma_chi_nhanh,ten_chi_nhanh,dia_chi,sdt_cn")] ChiNhanh? c)
        // {
        //     using (IDbConnection db = new SqlConnection(builder.ConnectionString))
        //         {
        //             c = db.Query<ChiNhanh>("sp_Sua_Chi_Nhanh", new {MaCN=c.ma_chi_nhanh, TenCN=c.ten_chi_nhanh, Diachi=c.dia_chi, SDT_CN=c.sdt_cn}, commandType:CommandType.StoredProcedure).FirstOrDefault();
        //         }
        //     return View(c);
        // }

        // [HttpPost, ActionName("Delete")]
        // [ValidateAntiForgeryToken]
        // public IActionResult Delete(string id)
        // {
        //     using (IDbConnection db = new SqlConnection(builder.ConnectionString))
        //         {
        //             db.Query<ChiNhanh>("sp_Xoa_Chi_Nhanh", new {MaCN=id}, commandType:CommandType.StoredProcedure);
        //         }
        //     return RedirectToAction(nameof(Index));
        // }
    }
}
