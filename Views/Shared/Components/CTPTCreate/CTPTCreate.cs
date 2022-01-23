using Microsoft.AspNetCore.Mvc;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl {
    public class CTPTCreate : ViewComponent {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CTPTCreate (IConfiguration configuration) {
            builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public IViewComponentResult Invoke(PhieuPhuThu p)
        {
            ChiTietPhuThu d = new ChiTietPhuThu();
            d.so_phieu_thu = p.so_phieu_thu;
            d.ma_chi_nhanh = p.ma_chi_nhanh;
            d.ma_nv = p.ma_nv;

            return View("_CTPTCreate", d);
        }
    }
}