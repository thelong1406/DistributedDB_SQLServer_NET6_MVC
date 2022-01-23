using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.Rendering;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl.Controllers
{
    public class DoanhThuController : Controller
    {
        private readonly ILogger<DoanhThuController> _logger;
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public DoanhThuController(ILogger<DoanhThuController> logger, IConfiguration configuration)
        {
            // builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
            builder.ConnectionString = Globals.Connection_String;
            _logger = logger;
        }
        public IActionResult Index()
        {
            BackupDoanhThu? BackupDoanhThus = new BackupDoanhThu();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                BackupDoanhThus = db.Query<BackupDoanhThu>("SELECT * FROM backup_doanh_thu").FirstOrDefault();
            }
            return View(BackupDoanhThus);
        }
    }
}
