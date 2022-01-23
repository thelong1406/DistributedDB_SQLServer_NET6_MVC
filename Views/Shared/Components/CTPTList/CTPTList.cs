using Microsoft.AspNetCore.Mvc;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl {
    public class CTPTList : ViewComponent {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CTPTList (IConfiguration configuration) {
            builder.ConnectionString = configuration.GetConnectionString("DefaultConnection");
        }
        public IViewComponentResult Invoke(int id)
        {
            List<ChiTietPhuThu> ChiTietPhuThus = new List<ChiTietPhuThu>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChiTietPhuThus = db.Query<ChiTietPhuThu>("sp_Xem_CTPT_Cua_PPT_May_Tram", new {SO_PPT=id}, commandType:CommandType.StoredProcedure).ToList();
            }
            return View("_CTPT",ChiTietPhuThus);
        }
    }
}