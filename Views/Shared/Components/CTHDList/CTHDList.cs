using Microsoft.AspNetCore.Mvc;
using btl.Models;
using Dapper;
using System.Data.SqlClient;
using System.Data;

namespace btl
{
    public class CTHDList : ViewComponent
    {
        SqlConnectionStringBuilder builder = new SqlConnectionStringBuilder();
        public CTHDList(IConfiguration configuration)
        {
            builder.ConnectionString = Globals.Connection_String;
        }
        public IViewComponentResult Invoke(int id)
        {
            List<ChiTietHoaDon> ChiTietHoaDons = new List<ChiTietHoaDon>();
            using (IDbConnection db = new SqlConnection(builder.ConnectionString))
            {
                ChiTietHoaDons = db.Query<ChiTietHoaDon>("sp_CTHD_Cua_Hoa_Don_May_Tram", new { SO_HD = id }, commandType: CommandType.StoredProcedure).ToList();
            }
            return View("_CTHD", ChiTietHoaDons);
        }
    }
}