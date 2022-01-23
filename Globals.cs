using System.Data.SqlClient;
using btl.Models;

namespace btl
{
    public static class Globals
    {
        public static string Connection_String { get; set; }
        public static Logined_User_Info _Logined_User_Info { get; set; }
        public static Logined_KhachHang_Info _KhachHang_Info { get; set; }
        public static List<DanhMuc> danhMucs { get; set; }
        public static List<ChiNhanh> chiNhanhs { get; set; }
        public static bool is_Customer { get; set; }
        public static void Set_Connection(string connection_string)
        {
            Globals.Connection_String = connection_string;
        }
        public static bool Check_Login(string connectionString)
        {
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    return true;
                }
                catch (SqlException)
                {
                    return false;
                }
                finally
                {
                    connection.Close();
                }
            }
        }
    }
}