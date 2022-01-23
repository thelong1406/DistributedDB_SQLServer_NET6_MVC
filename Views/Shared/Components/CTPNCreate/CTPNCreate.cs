using Microsoft.AspNetCore.Mvc;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl
{
    public class CTPNCreate : ViewComponent
    {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CTPNCreate(IConfiguration configuration)
        {
            builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public IViewComponentResult Invoke(PhieuNhap p)
        {
            ChiTietPhieuNhap d = new ChiTietPhieuNhap();
            d.so_phieu_nhap = p.so_phieu_nhap;
            d.ma_chi_nhanh = p.ma_chi_nhanh;
            d.ma_nv = p.ma_nv;
            d.ma_ncc = p.ma_ncc;

            return View("_CTPNCreate", d);
        }
    }
}