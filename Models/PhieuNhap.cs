using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class PhieuNhap
    {
        [Display(Name = "Số phiếu nhập")]
        public int so_phieu_nhap { get; set; }
        [Display(Name = "Mã Nhà Cung Cấp")]
        public int ma_ncc { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Ngày Nhập")]
        public DateTime ngay_nhap { get; set; }
        [Display(Name = "Tổng Tiền Nhập")]
        public double? tong_tien_nhap { get; set; }
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;

    }
}
