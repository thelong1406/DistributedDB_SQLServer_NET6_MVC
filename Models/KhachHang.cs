using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class KhachHang
    {
        [Display(Name = "Mã Khách Hàng")]
        public int ma_kh { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tên Khách Hàng")]
        public string ten_kh { get; set; } = null!;
        [Display(Name = "SĐT")]
        public string sdt { get; set; } = null!;
        [Display(Name = "Điểm Tích Lũy")]
        public double tich_luy { get; set; }
        [Display(Name = "Ngày Tham Gia")]
        public DateTime ngay_tham_gia { get; set; }
        [Display(Name = "Địa Chỉ")]
        public string? dia_chi { get; set; }
        [Display(Name = "Phái")]
        public bool gioi_tinh { get; set; }
        [Display(Name = "Ngày Sinh")]
        public DateTime ngay_sinh { get; set; }

    }
}
