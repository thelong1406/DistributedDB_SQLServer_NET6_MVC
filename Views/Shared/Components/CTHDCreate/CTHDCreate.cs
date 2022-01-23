using Microsoft.AspNetCore.Mvc;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl {
    public class CTHDCreate : ViewComponent {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CTHDCreate (IConfiguration configuration) {
            builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public IViewComponentResult Invoke(HoaDon p)
        {
            ChiTietHoaDon d = new ChiTietHoaDon();
            d.so_hd = p.so_hd;
            d.ma_chi_nhanh = p.ma_chi_nhanh;
            d.ma_nv = p.ma_nv;

            return View("_CTHDCreate", d);
        }
    }
}