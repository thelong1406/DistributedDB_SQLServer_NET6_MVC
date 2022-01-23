using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class HoaDon
    {
        [Display(Name = "Số Hóa Đơn")]
        public int so_hd { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tên Chi Nhánh")]
        public string ten_chi_nhanh { get; set; } = null!;
        [Display(Name = "Địa Chỉ")]
        public string dia_chi_chi_nhanh { get; set; } = null!;
        [Display(Name = "SĐT Chi Nhánh")]
        public string sdt_cn { get; set; } = null!;
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Tên Nhân Viên")]
        public string ten_nv { get; set; } = null!;
        [Display(Name = "Mã Khuyến Mãi")]
        public int? ma_khuyen_mai { get; set; }
        [Display(Name = "Mã Khách Hàng")]
        public int? ma_kh { get; set; }
        [Display(Name = "Mức Khuyến Mãi")]
        public string muc_khuyen_mai { get; set; } = null!;
        [Display(Name = "Tên Khách Hàng")]
        public string ten_kh { get; set; } = null!;
        [Display(Name = "Điểm Tích Luỹ")]
        public double? da_tich_luy { get; set; }
        [Display(Name = "Hình Thức Mua")]
        public bool hinh_thuc_mua { get; set; }
        [Display(Name = "Ngày Thanh Toán")]
        public DateTime ngay_thanh_toan { get; set; }
        [Display(Name = "Tổng Tiền")]
        public double? tong_tien { get; set; }
        [Display(Name = "TThanh Toán")]
        public bool? thanh_toan { get; set; }
        [Display(Name = "Mã Khu Vực")]
        public string ma_khu_vuc { get; set; } = null!;
        [Display(Name = "Tên Khu Vực")]
        public string ten_khu_vuc { get; set; } = null!;
        [Display(Name = "Phí Khu Vực")]
        public string phi_kv { get; set; } = null!;
    }
}
