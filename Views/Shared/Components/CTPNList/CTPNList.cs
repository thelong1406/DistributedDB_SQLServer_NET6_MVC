using Microsoft.AspNetCore.Mvc;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl {
    public class CTPNList : ViewComponent {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CTPNList (IConfiguration configuration) {
            builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public IViewComponentResult Invoke(int id)
        {
            List<ChiTietPhieuNhap> ChiTietPhieuNhaps = new List<ChiTietPhieuNhap>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChiTietPhieuNhaps = db.Query<ChiTietPhieuNhap>("sp_Xem_CTPN_Cua_Phieu_Nhap_May_Tram", new {SO_PN=id}, commandType:CommandType.StoredProcedure).ToList();
            }
            return View("_CTPN",ChiTietPhieuNhaps);
        }
    }
}