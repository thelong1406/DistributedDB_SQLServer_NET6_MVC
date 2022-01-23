using System.ComponentModel.DataAnnotations;

namespace btl.Models
{
    public partial class Logined_KhachHang_Info
    {
        [Display(Name = "Mã Khách Hàng")]
        public string? ma_kh { get; set; }

        [Display(Name = "Mã Chi Nhánh")]
        public string? ma_chi_nhanh { get; set; }
        [Display(Name = "Tên Chi Nhánh")]
        public string? ten_chi_nhanh { get; set; }
        [Display(Name = "Tên Khách Hàng")]
        public string? ten_kh { get; set; }
        [Display(Name = "Vai Trò")]
        public string? vai_tro { get; set; }
        [Display(Name = "SĐT")]
        public string? sdt { get; set; }
        [Display(Name = "Điểm tích luỹ")]
        public float? tich_luy { get; set; }
        [Display(Name = "Thời gian tham gia")]
        public string? thoi_gian_tham_gia { get; set; }
        [Display(Name = "Địa chỉ")]
        public string? dia_chi { get; set; }
        [Display(Name = "Phái")]
        public string? gioi_tinh { get; set; }
        [Display(Name = "Ngày sinh")]
        public string? ngay_sinh { get; set; }
    }
}
