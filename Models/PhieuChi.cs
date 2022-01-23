using System;
using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace btl.Models
{
    public partial class PhieuChi
    {
        [Display(Name = "Số Phiếu Chi")]
        public int so_phieu_chi { get; set; }
        [Display(Name = "Mã Loại Chi")]
        public int ma_loai_chi { get; set; }
        [Display(Name = "Loại Chi")]
        public string ten_loai_chi { get; set; } = null!;
        [Display(Name = "Ngày Chi")]
        public DateTime ngay_chi { get; set; }
        [Display(Name = "Tổng Tiền Chi")]
        public double? tong_tien_chi { get; set; }
        [Display(Name = "Mã Nhân Viên")]
        public string ma_nv { get; set; } = null!;
        [Display(Name = "Tên Nhân Viên")]
        public string ten_nv { get; set; } = null!;
        [Display(Name = "Mã Chi Nhánh")]
        public string ma_chi_nhanh { get; set; } = null!;
        [Display(Name = "Tên Chi Nhánh")]
        public string ten_chi_nhanh { get; set; } = null!;
    }
}
